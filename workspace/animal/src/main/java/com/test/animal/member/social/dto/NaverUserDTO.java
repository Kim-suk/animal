package com.test.animal.member.social.dto;

public class NaverUserDTO {
    private String id;
    private String email;
    private String name;       // ✅ name 필드 추가
    private String nickname;

    // Getters and Setters
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getName() { return name; }        // ✅ 추가
    public void setName(String name) { this.name = name; }

    public String getNickname() { return nickname; }
    public void setNickname(String nickname) { this.nickname = nickname; }
}
