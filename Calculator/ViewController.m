//
//  ViewController.m
//  Calculator
//
//  Created by Hanbing Yan on 4/2/15.
//  Copyright (c) 2015 Hanbing Yan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    float number1;
    float number2;
    float result;
    NSString* operation;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    number1 = 0;
    number2 = 0;
    result = 0;
    operation = NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)Number1:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"1"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number2:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"2"];
    [self.displayArea setText:myNumber];
}
- (IBAction)Digit3:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"3"];
    [self.displayArea setText:myNumber];
}
- (IBAction)Number4:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"4"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number5:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"5"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number6:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"6"];
    [self.displayArea setText:myNumber];
}


- (IBAction)Number7:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"7"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number8:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"8"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number9:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"9"];
    [self.displayArea setText:myNumber];
}

- (IBAction)Number0:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"0"];
    [self.displayArea setText:myNumber];
}

- (IBAction)decimals:(id)sender {
    NSString *myNumber = self.displayArea.text;
    myNumber = [myNumber stringByAppendingFormat:@"."];
    [self.displayArea setText:myNumber];
}

- (IBAction)Addition:(id)sender {
    NSString *myNumber = self.displayArea.text;
    operation = @"+";
    number1 = [myNumber floatValue];
    [self.displayArea setText:NULL];
}

- (IBAction)Substraction:(id)sender {
    NSString *myNumber = self.displayArea.text;
    operation = @"-";
    number1 = [myNumber floatValue];
    [self.displayArea setText:NULL];
}

- (IBAction)Multiplication:(id)sender {
    NSString *myNumber = self.displayArea.text;
    operation = @"*";
    number1 = [myNumber floatValue];
    [self.displayArea setText:NULL];
}

- (IBAction)Division:(id)sender {
    NSString *myNumber = self.displayArea.text;
    operation = @"/";
    number1 = [myNumber floatValue];
    [self.displayArea setText:NULL];
}

- (IBAction)Equal:(id)sender {
    NSString *myNumber = self.displayArea.text;
    number2 = [myNumber floatValue];
    
    if([operation isEqualToString:@"+"]){
        result = number1 + number2;
    }
    else if([operation isEqualToString:@"-"]){
        result = number1 - number2;
    }
    else if([operation isEqualToString:@"*"]){
        result = number1 * number2;
    }
    else if([operation isEqualToString:@"/"]){
        result = number1 / number2;
    }
    
    NSString *myResult = [NSString stringWithFormat:@"%f", result];
    [self.displayArea setText:myResult];
}

- (IBAction)Clear:(id)sender {
    [self.displayArea setText:NULL];
    number1 = 0;
    number2 = 0;
    result = 0;
    operation = NULL;
}

- (IBAction)Backspace:(id)sender {
    NSString *myNumber = self.displayArea.text;
    if (myNumber.length == 0) {
        return;
    }
    NSRange range = NSMakeRange(0, myNumber.length -1);
    myNumber = [myNumber substringWithRange:range];
    [self.displayArea setText:myNumber];
}

- (IBAction)Mathsin:(id)sender {
    NSString *myNumber = self.displayArea.text;
    number1 = [myNumber floatValue];
    result = sinf(number1 / 180 * M_PI);
    NSString *myResult = [NSString stringWithFormat:@"%f", result];
    [self.displayArea setText:myResult];
    number1 =0;
    result = 0;
    
}

- (IBAction)Mathcos:(id)sender {
    NSString *myNumber = self.displayArea.text;
    number1 = [myNumber floatValue];
    result = cosf(number1 / 180 * M_PI);
    NSString *myResult = [NSString stringWithFormat:@"%f", result];
    [self.displayArea setText:myResult];
    number1 =0;
    result = 0;

}


@end
