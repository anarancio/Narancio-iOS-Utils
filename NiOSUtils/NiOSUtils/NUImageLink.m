//
//  NUImageLink.m
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import "NUImageLink.h"
#import <QuartzCore/QuartzCore.h>

@implementation NUImageLink
@synthesize observer, selector, type, url;

- (void)awakeFromNib {
    [self setUserInteractionEnabled:YES];
    shadow = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    shadow.backgroundColor = [UIColor colorWithRed:0.0/192.0 green:0.0/192.0 blue:0.0/192.0 alpha:0.3];
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
    [self insertSubview:shadow atIndex:[[self subviews] count]];
    if (type == NUIImageLinkURLType) {
        if(self.url) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.url]];
        } else {
            NSLog(@"%@", @"NUImageLink of type NUImageLinkURLType can't have an empty url");
            [NSException raise:@"NUImageLink of type NUImageLinkURLType can't have an empty url" format:@"NUImageLink of type NUImageLinkURLType can't have an empty url"];   
        }
    } else if (type == NUIImageLinkSelectorType) {
        if (selector) {
            [observer performSelector:selector];
        } else {
            NSLog(@"%@", @"NUImageLink of type NUIImageLinkSelectorType can't have an empty selector");
            [NSException raise:@"NUImageLink of type NUIImageLinkSelectorType can't have an empty selector" format:@"NUImageLink of type NUIImageLinkSelectorType can't have an empty selector"];
        }
    } else {
        // the type of the image link is mandatory
        NSLog(@"%@", @"Invalid NUImageLinkType");
        [NSException raise:@"You must set the type of the NUImageLink" format:@"Invalid NUImageLinkType"];
    }
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [shadow removeFromSuperview];
}

@end
