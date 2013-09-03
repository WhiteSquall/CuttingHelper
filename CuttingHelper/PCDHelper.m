//
//  PCDHelper.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "PCDHelper.h"
#import "math.h"

#define PI 3.14159265

@implementation PCDHelper

- (void) dataUpate:(double)mLength :(double)mAngle
{
	LengthValue = mLength;
	AngleValue = mAngle;
}

- (double) AxisX
{
	double x = LengthValue * cos(AngleValue * PI / 180);
	
	return x;
}

- (double) AxisY
{
	double y = LengthValue * sin(AngleValue * PI / 180);
	
	return y;
}

@end