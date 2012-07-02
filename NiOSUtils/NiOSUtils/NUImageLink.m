//
//  NUImageLink.m
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import "NUImageLink.h"

@implementation NUImageLink
@synthesize observer, selector, type, url;

- (void)awakeFromNib {
    [self setUserInteractionEnabled:YES];
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
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

@end
