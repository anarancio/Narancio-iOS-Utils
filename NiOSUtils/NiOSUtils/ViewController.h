//
//  ViewController.h
//  NiOSUtils
//
//  Created by Alejandro Narancio on 3/1/12.
//  Copyright (c) 2012 Infuy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NUImageLink.h"

@interface ViewController : UIViewController

@property(strong, nonatomic) IBOutlet NUImageLink *img;

-(void) imageClicked;

@end
