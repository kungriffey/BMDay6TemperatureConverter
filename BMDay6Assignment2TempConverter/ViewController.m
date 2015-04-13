//
//  ViewController.m
//  BMDay6Assignment2TempConverter
//
//  Created by Kunwardeep Gill on 2015-04-13.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonPressed:(UIButton *)sender {
  
  double farenheit = [self.temperatureLabel.text doubleValue];
  
  double celsius = (farenheit - 32)/1.8;
  
  NSString *resultString = [[NSString alloc]initWithFormat: @"The Temperature is  is %.2f C", celsius];
  self.convertedLabel.text = resultString;
  
  //hides keyboard because textlabel is no longer active.
  [self.temperatureLabel resignFirstResponder];

}

//hide keyboard when return key is pressed
-(IBAction)textFieldReturn:(id)sender{
  
  [sender resignFirstResponder];
}

//hide keyboard when whitespace is pressed
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
  
  UITouch *touch = [[event allTouches] anyObject];
  if ([self.temperatureLabel isFirstResponder] && [touch view] != self.temperatureLabel) {
    [self.temperatureLabel resignFirstResponder];
  }
  [super touchesBegan:touches withEvent:event];
  
}





@end
