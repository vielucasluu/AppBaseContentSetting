//
//  UIColor_EXT.h
//  DTVCommonObjects
//
//  Created by Earl Bonovich on 12/8/08.
//  Copyright 2008 DirecTV. All rights reserved.
//

@interface UIColor (expanded)
	+ (UIColor *)LVL_colorForRGB:(CGFloat)dRed :(CGFloat)dGreen :(CGFloat)dBlue;
	+ (UIColor *)LVL_victoryColor;
	+ (UIColor *)LVL_colorWithHexString:(NSString *)stringToConvert andAlpha:(CGFloat)al;
@end
