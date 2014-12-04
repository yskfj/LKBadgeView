//
//  NSString+DeprecatedCategory.h
//  LKBadgeView
//
//  Created by 藤井洋介 on 2014/12/04.
//
//

#import <Foundation/Foundation.h>

@interface NSString (DeprecatedCategory)

- (CGSize)sizeWithFontEx:(UIFont *)font;
- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size;
- (CGSize)sizeWithFontEx:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
