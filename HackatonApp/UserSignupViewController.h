//
//  UserSignupViewController.h
//  HackatonApp
//
//  Created by Jose Luis Rodriguez on 24/10/14.
//  Copyright (c) 2014 jlrodv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserSignupViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *mailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)cancelPressed:(UIButton *)sender;
- (IBAction)signupPressed:(UIButton *)sender;

@end
