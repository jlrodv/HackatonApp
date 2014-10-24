//
//  UserSignupViewController.m
//  HackatonApp
//
//  Created by Jose Luis Rodriguez on 24/10/14.
//  Copyright (c) 2014 jlrodv. All rights reserved.
//

#import "UserSignupViewController.h"
#import <Parse/Parse.h>

@interface UserSignupViewController ()

@end

@implementation UserSignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma - mark IBActions

- (IBAction)cancelPressed:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)signupPressed:(UIButton *)sender {
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    indicator.tintColor = [UIColor blackColor];
    [indicator startAnimating];
    [self.view addSubview:indicator];
    
    PFUser *newUser = [PFUser user];
    newUser.username = self.mailField.text;
    newUser.email = self.mailField.text;
    newUser.password = self.passwordField.text;
    newUser[@"fullName"] = self.nameField.text;
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeed, NSError *error){
        
        [indicator stopAnimating];
        [indicator removeFromSuperview];
    
        if(succeed){
            [self performSegueWithIdentifier:@"signedUp" sender:nil];
        
        }
        else {
        
            if([UIAlertController class]){//UIAlertController for iOS 8
                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Failed to Signup. Try again." preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
                [alert addAction:cancel];
                
                [self presentViewController:alert animated:YES completion:nil];
                
            }
            else{
                
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Failed to Signup. Try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [alert show];
                
            }

        
        }
    
    
    }];
    
}

@end
