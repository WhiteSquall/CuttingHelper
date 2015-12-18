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

- (float) updateTri :(float)mAngle :(float)mCLine :(float)mVLine :(float)mHLine
{
    int m = 0;
    
    float oA = mAngle;
    float oB = mCLine;
    float oC = mVLine;
    float oD = mHLine;
    
    if (mAngle != 0) {
        m = m + 1;
    }
    if (mCLine != 0) {
        m = m + 4;
    }
    if (mVLine != 0) {
        m = m + 6;
    }
    if (mHLine != 0) {
        m = m + 8;
    }
    
    switch (m) {
        case 5:
            oC = mCLine * sin(mAngle) * PI / 180;
            oD = mCLine * cos(mAngle) * PI / 180;
            break;
            
        default:
            break;
    }
    
    return oA, oB, oC, oD;
}

@end
