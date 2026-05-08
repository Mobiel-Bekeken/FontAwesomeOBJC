//
//  UIFont+FontAwesome.m
//  FontAwesome-iOS Demo
//
//  Created by Alex Usbergo on 1/16/13.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import "UIFont+FontAwesome.h"
#import "NSString+FontAwesome.h"
#import <CoreText/CoreText.h>

@implementation UIFont (FontAwesome)

#pragma mark - Public API
+ (void)registerFontAwesomeFont {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([UIFont fontNamesForFamilyName:kFontAwesomeFamilyName].count > 0) {
            return;
        }

#if defined(SWIFTPM_MODULE_BUNDLE)
        NSBundle *bundle = SWIFTPM_MODULE_BUNDLE;
#else
        NSBundle *bundle = [NSBundle bundleForClass:self];
#endif
        NSURL *fontURL = [bundle URLForResource:@"FontAwesome" withExtension:@"ttf"];

        if (fontURL == nil) {
            fontURL = [[NSBundle mainBundle] URLForResource:@"FontAwesome" withExtension:@"ttf"];
        }

        if (fontURL == nil) {
            return;
        }

        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)fontURL, kCTFontManagerScopeProcess, nil);
    });
}

+ (UIFont*)fontAwesomeFontOfSize:(CGFloat)size {
    [self registerFontAwesomeFont];
    return [UIFont fontWithName:kFontAwesomeFamilyName size:size];
}

@end
