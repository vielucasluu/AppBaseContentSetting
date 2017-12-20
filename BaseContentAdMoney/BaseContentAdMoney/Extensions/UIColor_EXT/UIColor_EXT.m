//
//  UIColor_EXT.h
//  DTVCommonObjects
//
//  Created by Earl Bonovich on 12/8/08.
//  Copyright 2008 DirecTV. All rights reserved.
//

#import "UIColor_EXT.h"

@implementation UIColor (expanded)

+ (UIColor *)LVL_colorForRGB:(CGFloat)dRed :(CGFloat)dGreen :(CGFloat)dBlue {
	return [UIColor colorWithRed:(dRed/255.0 ) green:(dGreen/255.0) blue:(dBlue/255.0) alpha:1.0];
}
+ (UIColor *)LVL_victoryColor {
	return [UIColor LVL_colorForRGB:253 :224 :124];
}
+ (UIColor *)LVL_colorWithHexString: (NSString *) stringToConvert andAlpha:(CGFloat)al
{  
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];  
	
    // String should be 6 or 8 characters  
    if ([cString length] < 6) return [UIColor redColor];  
	
    // strip 0X if it appears  
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];  
	
    if ([cString length] != 6) return [UIColor redColor];  
	
    // Separate into r, g, b substrings  
    NSRange range;  
    range.location = 0;  
    range.length = 2;  
    NSString *rString = [cString substringWithRange:range];  
	
    range.location = 2;  
    NSString *gString = [cString substringWithRange:range];  
	
    range.location = 4;  
    NSString *bString = [cString substringWithRange:range];  
	
    // Scan values  
    unsigned int r, g, b;  
    [[NSScanner scannerWithString:rString] scanHexInt:&r];  
    [[NSScanner scannerWithString:gString] scanHexInt:&g];  
    [[NSScanner scannerWithString:bString] scanHexInt:&b];  
	
    return [UIColor colorWithRed:((float) r / 255.0f)  
                           green:((float) g / 255.0f)  
                            blue:((float) b / 255.0f)  
                           alpha:al];  
}  

@end
