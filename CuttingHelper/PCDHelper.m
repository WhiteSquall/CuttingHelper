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

- (void) dataUpdate:(double)insertPCD :(double)insertAngle
{
	mLength = insertPCD;
	mAngle = insertAngle;
}

- (double) AxisX
{
	double x = mLength * cos(mAngle * PI / 180);
	
	return x;
}

- (double) AxisY
{
	double y = mLength * sin(mAngle * PI / 180);
	
	return y;
}

@end