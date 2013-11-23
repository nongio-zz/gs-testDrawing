#include <AppKit/AppKit.h>
#include "MyController.h"

@interface TestView : NSView
{

}
@end

@implementation TestView

- (void) drawRect: (NSRect)aRect
{
    //// Color Declarations
    NSColor* startColor = [NSColor colorWithCalibratedRed: 0.833
                                                   green: 0.833 
                                                    blue: 0.833 
                                                   alpha: 1];
    
    NSColor* endColor = [NSColor colorWithCalibratedRed: 0.667
                                                  green: 0.667 
                                                   blue: 0.667 
                                                  alpha: 1];

    NSColor* strokeColor = [NSColor colorWithCalibratedRed: 0.212 
                                                  green: 0.184 
                                                   blue: 0.176 
                                                  alpha: 1];
    
    NSBezierPath* roundedRectanglePath = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(50, 300, 200, 200) 
                                                                         xRadius: 20 
                                                                         yRadius: 20];

    
    NSGradient* gradient = [[NSGradient alloc] initWithStartingColor: startColor endingColor: endColor];

    [strokeColor setStroke];
    [roundedRectanglePath stroke];
    [gradient drawInBezierPath:roundedRectanglePath  angle: -90];

}

- (BOOL) canDraw
{
	return YES;
}

@end

@implementation MyController

- (void) awakeFromNib
{
	TestView *view1 = [[TestView alloc] initWithFrame: NSMakeRect(0, 0, 800, 800)];
  [[window contentView] addSubview: view1];
}

@end
