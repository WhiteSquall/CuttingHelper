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
	double mLength;
	double mAngle;
}

- (void) dataUpdate: (double)insertPCD: (double)insertAngle;
- (double) AxisX;
- (double) AxisY;

@end
