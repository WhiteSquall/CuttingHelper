//
//  Tri-function.m
//  CuttingHelper
//
//  Created by KimMyeonghui on 2015. 12. 18..
//  Copyright © 2015년 WhiteSquall. All rights reserved.
//

#import "Tri-function.h"
#import "math.h"

#define PI 3.14159265

@implementation Tri_function

- (double) updateTri :(double)oA :(double)oB :(double)oC :(double)oD
{
    int m = 0;
    
    if (oA != 0) {
        m = m + 1;
    }
    if (oB != 0) {
        m = m + 4;
    }
    if (oC != 0) {
        m = m + 6;
    }
    if (oD != 0) {
        m = m + 8;
    }
    
    switch (m) {
        case 5:
            oC = oB * sin(oA) * PI / 180;
            oD = oB * cos(oA) * PI / 180;
            break;
            
        case 7:
            oB = oC / sin(oA) * PI / 180;
            oD = oC / tan(oA) * PI / 180;
            break;
            
        case 9:
            oB = oD / cos(oA) * PI / 180;
            oC = oD * tan(oA) * PI / 180;
            break;
            
        case 10:
            oA = asin(oC / oB) * PI / 180;
            oD = sqrt(pow(oB, 2) - pow(oC,2));
            
        case 12:
            oA = acos(oD / oB) * PI / 180;
            oC = sqrt(pow(oB, 2) - pow(oD,2));
            
        case 14:
            oA = atan(oC / oD) * PI / 180;
            oB = sqrt(pow(oC, 2) + pow(oD,2));
            
        default:
            break;
    }
    
    return oA, oB, oC, oD;
}

@end
