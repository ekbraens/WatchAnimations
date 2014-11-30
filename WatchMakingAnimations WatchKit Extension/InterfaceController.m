//
//  InterfaceController.m
//  WatchMakingAnimations WatchKit Extension
//
//  Created by New on 11/29/14.
//
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *heroAnimation;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        [self.heroAnimation setImageNamed:@"frame"];
        
        NSRange range = NSMakeRange(0, 44);
        
        [self.heroAnimation startAnimatingWithImagesInRange:range duration:3 repeatCount:2];
        
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



