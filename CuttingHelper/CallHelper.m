//
//  CallHelper.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 22..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "CallHelper.h"
#import <math.h>

#define PI 3.14159265

@implementation CallHelper

-(double) TriangleX
{
	
	double xAxis = self.mLength * cos(self.mAngle * PI /180);
	
	return xAxis;
}

-(double) TriangleY
{
	
	double yAxis = self.mLength * sin(self.mAngle * PI /180);
	
	return yAxis;
}

@end