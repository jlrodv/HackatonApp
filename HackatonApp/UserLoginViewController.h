//
//  UserLoginViewController.h
//  HackatonApp
//
//  Created by Jose Luis Rodriguez on 24/10/14.
//  Copyright (c) 2014 jlrodv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
- (IBAction)loginButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
