//
//  ViewController.h
//  Calculator
//
//  Created by Hanbing Yan on 4/2/15.
//  Copyright (c) 2015 Hanbing Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)Number1:(id)sender;
- (IBAction)Number2:(id)sender;
- (IBAction)Digit3:(id)sender;
- (IBAction)Number4:(id)sender;

- (IBAction)Number5:(id)sender;
- (IBAction)Number6:(id)sender;

- (IBAction)Number7:(id)sender;
- (IBAction)Number8:(id)sender;
- (IBAction)Number9:(id)sender;
- (IBAction)Number0:(id)sender;
- (IBAction)decimals:(id)sender;

- (IBAction)Addition:(id)sender;
- (IBAction)Substraction:(id)sender;
- (IBAction)Multiplication:(id)sender;
- (IBAction)Division:(id)sender;
- (IBAction)Equal:(id)sender;
- (IBAction)Clear:(id)sender;
- (IBAction)Backspace:(id)sender;

- (IBAction)Mathsin:(id)sender;
- (IBAction)Mathcos:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *displayArea;

@end

