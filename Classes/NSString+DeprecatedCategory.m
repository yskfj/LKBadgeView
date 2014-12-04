//
//  NSString+DeprecatedCategory.m
//  LKBadgeView
//
//  Created by 藤井洋介 on 2014/12/04.
//
//

#import "NSString+DeprecatedCategory.h"

@implementation NSString (DeprecatedCategory)

- (CGSize)sizeWithFontEx:(UIFont *)font
{
    NSDictionary *attributes = @{ NSFontAttributeName : font };
    return [self sizeWithAttributes:attributes];
}

- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size
{
    return [self sizeWithFontEx:font constrainedToSize:size
                  lineBreakMode:NSLineBreakByWordWrapping];
}

- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size
           lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineBreakMode = lineBreakMode;
    style.alignment = NSTextAlignmentLeft;
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName : font,
                                 NSParagraphStyleAttributeName : style
                                 };
    CGRect rect = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size;
}

@end
