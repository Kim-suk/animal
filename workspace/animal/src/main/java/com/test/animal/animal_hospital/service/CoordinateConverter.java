package com.test.animal.animal_hospital.service;

import org.locationtech.proj4j.*;
import org.springframework.stereotype.Component;

@Component
public class CoordinateConverter {

    private static final CoordinateTransform transform;

    static {
        String epsg5174 = "+proj=tmerc +lat_0=38 +lon_0=127 +k=1 "
                        + "+x_0=200000 +y_0=500000 +ellps=GRS80 +units=m +no_defs";

        CRSFactory crsFactory = new CRSFactory();
        CoordinateReferenceSystem srcCrs = crsFactory.createFromParameters("EPSG:5174", epsg5174);
        CoordinateReferenceSystem dstCrs = crsFactory.createFromName("EPSG:4326"); // WGS84

        CoordinateTransformFactory ctFactory = new CoordinateTransformFactory();
        transform = ctFactory.createTransform(srcCrs, dstCrs);
    }

    public static double[] convert(double x, double y) {
        ProjCoordinate src = new ProjCoordinate(x, y);
        ProjCoordinate dst = new ProjCoordinate();
        transform.transform(src, dst);
        return new double[]{dst.y, dst.x}; // ����, �浵 ��
    }
}