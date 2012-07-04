//
//  NUImageLink.h
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    NUIImageLinkURLType,
    NUIImageLinkSelectorType
} NUIImageLinkType;

@interface NUImageLink : UIImageView {
    UIView *shadow;
}

@property(weak, nonatomic) id observer;
@property(weak, nonatomic) NSString *url;
@property(readwrite) SEL selector;
@property(readwrite) NUIImageLinkType type;

@end
