//
//  AppDelegate.m
//  Example
//
//  Created by Heiko Dreyer on 27.07.12.
//  Copyright (c) 2012 boxedfolder.com. All rights reserved.
//

#import "AppDelegate.h"
#import "BFPageControl.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSRect frame = self.window.frame;
    BFPageControl *control = [[BFPageControl alloc] init];
    [control setNumberOfPages: 11];
    [control setIndicatorDiameterSize: 15];
    [control setIndicatorMargin: 5];
    [control setCurrentPage: 5];
    [control setDrawingBlock: ^(NSRect frame, NSView *aView, BOOL isSelected, BOOL isHighlighted){
        
        [NSGraphicsContext saveGraphicsState];
        frame = CGRectInset(frame, 2.0, 2.0);
        NSBezierPath *path = [NSBezierPath bezierPathWithOvalInRect: CGRectMake(frame.origin.x, frame.origin.y + 1.5, frame.size.width, frame.size.height)];
        [[NSColor whiteColor] set];
        [path fill];
        
        path = [NSBezierPath bezierPathWithOvalInRect: frame];
        NSColor *color = isSelected ? [NSColor colorWithCalibratedRed: (115.0 / 255.0) green: (115.0 / 255.0) blue: (115.0 / 255.0) alpha: 1.0] :
        [NSColor colorWithCalibratedRed: (217.0 / 255.0) green: (217.0 / 255.0) blue: (217.0 / 255.0) alpha: 1.0];
        
        if(isHighlighted)
            color = [NSColor colorWithCalibratedRed: (150.0 / 255.0) green: (150.0 / 255.0) blue: (150.0 / 255.0) alpha: 1.0];
        
        [color set];
        [path fill];
        
        frame = CGRectInset(frame, 0.5, 0.5);
        [[NSColor colorWithCalibratedRed: (25.0 / 255.0) green: (25.0 / 255.0) blue: (25.0 / 255.0) alpha: 0.15] set];
        [NSBezierPath setDefaultLineWidth: 1.0];
        [[NSBezierPath bezierPathWithOvalInRect: frame] stroke];
        [NSGraphicsContext restoreGraphicsState];
    }];
    [self.window.contentView addSubview: control];
    [control setFrame: CGRectMake(frame.size.width / 2 - control.frame.size.width / 2, 50, 40, 40)];
}

@end
