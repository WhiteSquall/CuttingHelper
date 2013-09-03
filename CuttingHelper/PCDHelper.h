//
//  PCDHelper.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCDHelper : NSObject
{
	double LengthValue;
	double AngleValue;
}

- (void) dataUpate: (double) mLength: (double) mAngle;
- (double) AxisX;
- (double) AxisY;

@end
