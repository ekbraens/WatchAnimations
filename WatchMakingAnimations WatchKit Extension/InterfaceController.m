//
//  InterfaceController.m
//  WatchMakingAnimations WatchKit Extension
//
//  Created by New on 11/29/14.
//
//

#import "InterfaceController.h"


@interface InterfaceController()

// this can all be done within stroyboard
// just change the name of the image to whatever the name of the file is
// (in this case it is 'frame')
// change animate to 'yes' and the range for animation and duration will show up
// added the code to make it programmatically, just to make sure i knew how

// this is the image for the animation
@property (weak, nonatomic) IBOutlet WKInterfaceImage *heroAnimation;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        
        // make sure the image knows what you are animating
        // look into images.xcassets to see naming convention
        [self.heroAnimation setImageNamed:@"frame"];
        
        // for function below, 44 is the number of frames to gif/animation contains, 0 indexed
        NSRange range = NSMakeRange(0, 44);
        
        // animation function, makes the magic happen
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



