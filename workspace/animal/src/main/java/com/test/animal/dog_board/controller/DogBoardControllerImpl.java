package com.test.animal.dog_board.controller;
 
 import java.io.File;
 import java.io.IOException;
 import java.util.ArrayList;
 import java.util.Enumeration;
 import java.util.HashMap;
 import java.util.Iterator;
 import java.util.List;
 import java.util.Map;
 
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import javax.servlet.http.HttpSession;
 
 import org.apache.commons.io.FileUtils;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.http.HttpHeaders;
 import org.springframework.http.HttpStatus;
 import org.springframework.http.ResponseEntity;
 import org.springframework.stereotype.Controller;
 import org.springframework.transaction.annotation.EnableTransactionManagement;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestMethod;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.multipart.MultipartFile;
 import org.springframework.web.multipart.MultipartHttpServletRequest;
 import org.springframework.web.servlet.ModelAndView;
 
 import com.test.animal.dog_board.dto.DogArticleDTO;
 import com.test.animal.dog_board.dto.DogImageDTO;
 import com.test.animal.dog_board.service.DogBoardService;
 
 @Controller
 @RequestMapping("/dog_board")
 @EnableTransactionManagement
 public class DogBoardControllerImpl implements DogBoardController {
 	private static final String BOARD_REPO = "C:\\image";
 	@Autowired
 	private DogBoardService service;
 	
 	@Override
 	@RequestMapping("/dog_listArticles.do")
 	public ModelAndView dog_listArticles(HttpServletRequest request, 
 			HttpServletResponse response) throws Exception {
 		// TODO Auto-generated method stub
 		String viewName = (String) request.getAttribute("viewName");
 		List<DogArticleDTO> articlesList = service.dog_listArticles();
 		ModelAndView mav = new ModelAndView(viewName);
 		mav.addObject("articlesList", articlesList);
 		return mav;
 	}
 
 	@Override
 	@RequestMapping("/*Form.do")
 	public ModelAndView dog_form(
 			Integer parentNo,
 			HttpServletRequest request, HttpServletResponse response) throws Exception {
 		// TODO Auto-generated method stub
 		String viewName = (String) request.getAttribute("viewName");
 		ModelAndView mav = new ModelAndView(viewName);
 		mav.addObject("parentNo", parentNo);
 		return mav;
 	}
 
 	@Override
 	@RequestMapping(value="/dog_addNewArticle", method=RequestMethod.POST)
 	public ResponseEntity dog_addNewArticle(MultipartHttpServletRequest mRequest, HttpServletResponse response)
 			throws Exception {
 		// TODO Auto-generated method stub
 		mRequest.setCharacterEncoding("utf-8");
 		Map<String, Object> articleMap = new HashMap<String, Object>();
 		Enumeration<String> enu = mRequest.getParameterNames();
 		
 		while(enu.hasMoreElements()) {
 			String name = (String) enu.nextElement();
 			String value = mRequest.getParameter(name);
 			articleMap.put(name, value);
 		}
 		
 		// String imageFileName = upload(mRequest);
 		List<String> fileList = upload(mRequest);
 		List<DogImageDTO> imageFileList = new ArrayList<DogImageDTO>();
 		
 		if(fileList != null && fileList.size() != 0) {
 			for(String fileName : fileList) {
 				DogImageDTO image = new DogImageDTO();
 				image.setImageFileName(fileName);
 				imageFileList.add(image);
 			}
 		
 			articleMap.put("imageFileList", imageFileList);
 		}
 		
 		HttpSession session = mRequest.getSession();
 		String id = (String)session.getAttribute("loginId");
 		
 		if(articleMap.get("parentNo") == null) {
 			articleMap.put("parentNo", 0);
 		} else {
 			int parentNo = Integer.parseInt((String) articleMap.get("parentNo"));
 			articleMap.put("parentNo", parentNo);
 		}
 		
 		articleMap.put("id", id);
 		
 		String message;
 		ResponseEntity resEnt = null;
 		HttpHeaders responseHeaders = new HttpHeaders();
 		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
 		
 		try {
 			int articleNo = service.dog_addNewArticle(articleMap);
 			if(imageFileList != null && imageFileList.size() != 0) {
 				for(DogImageDTO imageDTO : imageFileList) {
 					File srcFile = 
 							new File(BOARD_REPO + "\\" + "temp" + "\\" 
 									+ imageDTO.getImageFileName());
 					File destDir = new File(BOARD_REPO + "\\" + articleNo);
 					FileUtils.moveFileToDirectory(srcFile, destDir, true);
 				}
 			}
 			message = "<script>";
 			message += "alert('새글을 추가했습니다.');";
 			message += "lodogion.href='/animal/dog_board/dog_listArticles.do';";
 			message += "</script>";
 			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
 		} catch (Exception e) {
 			if(imageFileList != null && imageFileList.size() != 0) {
 				for(DogImageDTO imageDTO : imageFileList) {
 					File srcFile = 
 							new File(BOARD_REPO + "\\" + "temp" + "\\" 
 									+ imageDTO.getImageFileName());
 					srcFile.delete();
 				}
 			}
 			message = "<script>";
 			message += "alert('오류가 발생했습니다. 다시 시도해 주세요');";
 			message += "lodogion.href='/animal/dog_board/dog_articleForm.do';";
 			message += "</script>";
 			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
 			e.printStackTrace();
 		}
 		return resEnt;
 	}
 
 	private List<String> upload(MultipartHttpServletRequest mRequest) throws IOException {
 		// TODO Auto-generated method stub
 		// String imageFileName = null;
 		List<String> fileList = new ArrayList<String>();
 		Iterator<String> fileNames = mRequest.getFileNames();
 		
 		while(fileNames.hasNext()) {
 			String fileName = fileNames.next();
 			MultipartFile mFile = mRequest.getFile(fileName);
 			String originalFileName = mFile.getOriginalFilename();
 			fileList.add(originalFileName);
 			
 			File file = new File(BOARD_REPO + "\\" + fileName);
 			
 			if(mFile.getSize() != 0) {
 				if(!file.exists()) {
 					if(file.getParentFile().mkdirs()) {
 						file.createNewFile();
 					}
 				}
 				mFile.transferTo(new File(BOARD_REPO + "\\" + "temp" + "\\" + originalFileName));
 			}
 		}
 		return fileList;
 	}
 
 	@Override
 	@RequestMapping("/dog_viewArticle.do")
 	public ModelAndView dog_viewArticle(
 			@RequestParam("articleNo") int articleNo,
 			HttpServletRequest request, HttpServletResponse response) throws Exception {
 		// TODO Auto-generated method stub
 		String viewName = (String) request.getAttribute("viewName");
 		Map articleMap = service.dog_viewArticle(articleNo);
 		ModelAndView mav = new ModelAndView(viewName);
 		mav.addObject("articleMap", articleMap);
 		return mav;
 	}
 
 	@Override
 	@RequestMapping(value="/dog_modArticle.do", method=RequestMethod.POST)
 	public ResponseEntity dog_modArticle(MultipartHttpServletRequest mRequest, HttpServletResponse response)
 			throws Exception {
 		// TODO Auto-generated method stub
 		mRequest.setCharacterEncoding("utf-8");
 		Map<String , Object> articleMap = new HashMap<String, Object>();
 		
 		String articleNo = mRequest.getParameter("articleNo");
 		articleMap.put("articleNo", articleNo);
 		
 		String title = mRequest.getParameter("title");
 		articleMap.put("title", title);
 		
 		String content = mRequest.getParameter("content");
 		articleMap.put("content", content);
 		
 		// String imageFileName = upload(mRequest);
 		List<String> fileList = upload(mRequest);
 		List<DogImageDTO> imageFileList = new ArrayList<DogImageDTO>();
 		if(fileList != null && fileList.size() != 0) {
 			for(String fileName:fileList) {
 				DogImageDTO imageDTO = new DogImageDTO();
 				imageDTO.setImageFileName(fileName);
 				imageDTO.setArticleNo
 					(Integer.parseInt((String) articleMap.get("articleNo")));
 				imageFileList.add(imageDTO);
 			}
 			articleMap.put("imageFileList", imageFileList);
 		}
 		
 		HttpSession session = mRequest.getSession();
 				
 		String id = (String)session.getAttribute("loginId");
 		articleMap.put("id", id);
 		
 		String message;
 		ResponseEntity resEnt = null;
 		HttpHeaders responseHeaders = new HttpHeaders();
 		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
 		
 		try {
 			service.dog_modArticle(articleMap);
 			if(imageFileList != null && imageFileList.size() != 0) {
 				for(DogImageDTO imageDTO: imageFileList) {
 					File srcFile = 
 							new File(BOARD_REPO + "\\" + "temp" + "\\" 
 									+ imageDTO.getImageFileName());
 					File destDir = new File(BOARD_REPO + "\\" + articleNo);
 					FileUtils.moveFileToDirectory(srcFile, destDir, true);
 				}
 			}
 			message = "<script>";
 			message += "alert('글이 수정 되었습니다.');";
 			message += "lodogion.href='/animal/dog_board/dog_viewArticle.do?articleNo="
 					+articleNo+"';";
 			message += "</script>";
 			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
 		} catch (Exception e) {
 			if(imageFileList != null && imageFileList.size() != 0) {
 				for(DogImageDTO imageDTO : imageFileList) {
 					File srcFile = 
 							new File(BOARD_REPO + "\\" + "temp" + "\\" 
 									+ imageDTO.getImageFileName());
 					srcFile.delete();
 				}
 			}
 			message = "<script>";
 			message += "alert('수정 중 오류가 발생했습니다. 다시 시도해 주세요');";
 			message += "lodogion.href='/animal/dog_board/dog_viewArticle.do?articleNo="
 					+articleNo+"';";
 			message += "</script>";
 			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
 			e.printStackTrace();
 		}
 		
 		return resEnt;
 	}
 
 	@Override
 	@RequestMapping(value="/dog_removeArticle.do", method=RequestMethod.POST)
 	public ResponseEntity dog_removeArticle(int articleNo, HttpServletRequest Request, HttpServletResponse response)
 			throws Exception {
 		// TODO Auto-generated method stub
 		String message = null;
 		ResponseEntity resEnt = null;
 		HttpHeaders responseHeaders = new HttpHeaders();
 		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
 		
 		try {
 			service.dog_removeArticle(articleNo);
 			File destDir = new File(BOARD_REPO + "\\" + articleNo);
 			FileUtils.deleteDirectory(destDir);
 			
 			message = "<script>";
 			message += "alert('삭제가 완료되었습니다.');";
 			message += "lodogion.href='/animal/dog_board/dog_listArticles.do;";
 			message += "</script>";
 			resEnt = new  ResponseEntity(message, responseHeaders, HttpStatus.OK);
 		} catch(Exception e) {
 			message = "<script>";
 			message += "alert('삭제에 실패했습니다. 다시 시도해 주세요.');";
 			message += "lodogion.href='/animal/dog_board/dog_listArticles.do;";
 			message += "</script>";
 			resEnt = new  ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
 			e.printStackTrace();
 		}
 		
 		return resEnt;
 	}
 
 	@Override
 	@RequestMapping("/dog_deleteImage.do")
 	public ResponseEntity dog_deleteImage(
 			DogImageDTO image, 
 			HttpServletRequest mRequest, HttpServletResponse response)
 			throws Exception {
 		// TODO Auto-generated method stub
 		int articleNo = service.dog_deleteImage(image.getImageFileNo());
 		String message = null;
 		ResponseEntity resEnt = null;
 		HttpHeaders responseHeaders = new HttpHeaders();
 		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
 		
 		try {
 			File deleteFile = new File(BOARD_REPO + "\\" + articleNo + "\\" 
 					+ image.getImageFileName());
 			deleteFile.delete();
 			
 			message = "<script>";
 			message += "alert('삭제가 완료되었습니다.');";
 			message += "lodogion.href='/animal/dog_board/dog_viewArticle.do?articleNo="
 					+articleNo+"';";
 			message += "</script>";
 			resEnt = new  ResponseEntity(message, responseHeaders, HttpStatus.OK);
 		} catch(Exception e) {
 			message = "<script>";
 			message += "alert('삭제에 실패했습니다. 다시 시도해 주세요.');";
 			message += "lodogion.href='/animal/dog_board/dog_viewArticle.do?articleNo="
 					+articleNo+"';";
 			message += "</script>";
 			resEnt = new  ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
 			e.printStackTrace();
 		}
 		
 		return resEnt;
 	}
 
 	
 }
 
 
 
 
 