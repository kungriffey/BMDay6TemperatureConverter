//
//  ViewController.h
//  BMDay6Assignment2TempConverter
//
//  Created by Kunwardeep Gill on 2015-04-13.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *temperatureLabel;
@property (strong, nonatomic) IBOutlet UILabel *convertedLabel;

- (IBAction)convertButtonPressed:(UIButton *)sender;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)convertBackButtonPressed:(UIButton *)sender;

@end

