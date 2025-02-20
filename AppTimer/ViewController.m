//
//  ViewController.m
//  AppTimer
//
//  Created by Miriam Sanchez on 18/02/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // counter = 0;
    counter = 15;
    self.label.text = [NSString stringWithFormat:@"%i", counter];
    
}


- (IBAction)restartTimer:(id)sender {
    [timer invalidate];
   // counter = 0;
    counter = 15;
    self.label.text = [NSString stringWithFormat:@"%i", counter];
}

- (IBAction)pauseTimer:(id)sender {
    [timer invalidate];
}

- (IBAction)startTimer:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}
-(void)updateTimer{
   // counter += 1;
    counter -= 1;
    self.label.text = [NSString stringWithFormat:@"%i", counter];
    if (counter == 0) {
        [timer invalidate];
    }
}
@end
