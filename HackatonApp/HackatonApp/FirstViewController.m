//
//  FirstViewController.m
//  HackatonApp
//
//  Created by Jose Luis Rodriguez on 19/10/14.
//  Copyright (c) 2014 jlrodv. All rights reserved.
//

#import "FirstViewController.h"
#import <Parse/Parse.h>


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    
    if(![PFUser currentUser]){
    
        [self.tabBarController performSegueWithIdentifier:@"loginView" sender:nil];
    
    }

}

-(IBAction)userStartedSession:(UIStoryboardSegue *)sender{
    NSLog(@"Loged in");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
