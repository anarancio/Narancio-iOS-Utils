//
//  NUImageLink.m
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import "NUImageLink.h"

@implementation NUImageLink
@synthesize observer, selector;

- (void)awakeFromNib {
    [self setUserInteractionEnabled:YES];
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
    [observer performSelector:selector];
}

@end
