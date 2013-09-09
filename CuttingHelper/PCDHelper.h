//
//  PCDHelper.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCDHelper : NSObject

- (NSString*) updatePCD :(bool)HalfAngleCheck :(double)mPCD :(double)mStartAngle :(int)mNumber;
- (NSString*) updateDistance :(double)mPCD :(int)mNumber;

@end