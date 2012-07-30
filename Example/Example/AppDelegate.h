//
//  AppDelegate.h
//  Example
//
//  Created by Heiko Dreyer on 27.07.12.
//  Copyright (c) 2012 boxedfolder.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BFPageControl.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, BFPageControlDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (nonatomic, assign)IBOutlet NSTextField *label;

@end
