//
//  NUImageLink.h
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NUImageLink : UIImageView

@property(weak, nonatomic) id observer;
@property(readwrite) SEL selector;

@end
