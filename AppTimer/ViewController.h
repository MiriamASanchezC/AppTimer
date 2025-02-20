//
//  ViewController.h
//  AppTimer
//
//  Created by Miriam Sanchez on 18/02/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer* timer;
    int counter;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)startTimer:(id)sender;
- (IBAction)pauseTimer:(id)sender;
- (IBAction)restartTimer:(id)sender;



@end

