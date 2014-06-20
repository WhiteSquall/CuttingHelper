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

// (bool)HalfAngleCheck = 시작 각도를 1/2 지점으로 할 것인지 체크
// (double)mPCD = PCD 입력
// (double)mStartAngle = 시작 각도
// (int)mNumber = 홀의 갯수

- (NSString*) updatePCD :(bool)HalfAngleCheck :(double)mPCD :(double)mStartAngle :(int)mNumber
{
	NSString *OutputPCD = nil; // 출력될 문자열의 초기화
	int LoopPCDNumber = 1; // while문 시작 변수
	double RealAngle = 360 / (double)mNumber; // 홀간 각도
	double RealStartAngle = (HalfAngleCheck == true ? RealAngle / 2 : mStartAngle); // 시작 각도를 어떻게 할 것인지 재확인
	double LengthValue = mPCD / 2; // 반경 계산
	
	OutputPCD = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", mPCD, mNumber, RealAngle]; // 출력될 좌표의 기본 값
	
	while (LoopPCDNumber <= mNumber) // 홀 갯수 만큼 각 좌표의 값을 계산
		{
		double AngleValue = RealStartAngle + (RealAngle * LoopPCDNumber) - RealAngle; // 각 좌표의 각도를 구함
		double AxisX = LengthValue * cos(AngleValue * PI / 180); // X의 좌표
		double AxisY = LengthValue * sin(AngleValue * PI / 180); // Y의 좌표
		
		OutputPCD = [OutputPCD stringByAppendingFormat :@"X%0.3f\t Y%0.3f\n", AxisX, AxisY]; // 출력값을 차곡차곡 저장
		
		LoopPCDNumber++; // 홀의 갯수 만큼 더해나감
		}
	
	return OutputPCD; // 각 홀의 좌표 출력
}

- (NSString*) updateDistance:(double)mPCD :(int)mNumber // 각 홀마다의 거리 구하는 공식
{	
	NSString *OutputDistance = nil; // 출력될 문자열의 초기화
	int loopPCDNumber = 2; // 첫 홀과 두번째 홀의 거리를 처음에 구해야하므로 시작 값은 2
	double RealAngle = 360 / (double)mNumber; // 홀간 각도
	double LengthValue = mPCD / 2; // 반경 게산
	
	OutputDistance = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", mPCD, mNumber, RealAngle]; // 출력될 좌표의 기본 값
	
	while (loopPCDNumber <= mNumber) // 홀 갯수 만큼 좌표의 값을 계산
		{
		double AngleValue = RealAngle * (loopPCDNumber - 1) / 2; // 각 좌표의 각도를 구함
		double PCDDistance = (LengthValue * sin(AngleValue * PI / 180) * 2); // 첫 홀부터 각각의 홀까지의 거리를 구함
		
		OutputDistance = [OutputDistance stringByAppendingFormat :@"1 to %d : %0.3fmm\n", loopPCDNumber, PCDDistance]; // 출력될 값의 저장
		
		loopPCDNumber++; // 출력될 갯수 만큼 더해감
		}
	
	return OutputDistance; // 홀간 거리 출력
}

@end