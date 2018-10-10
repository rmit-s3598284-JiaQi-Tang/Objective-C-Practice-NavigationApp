//
//  SecondViewController.m
//  Objective-C_Practice
//
//  Created by JiaQi Tang on 9/10/18.
//  Copyright © 2018 JiaQi Tang. All rights reserved.
//

#import "SecondViewController.h"
//#import "FirstViewController.h"
@implementation SecondViewController

@synthesize inputNameTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)buyButtonTapped:(id)sender {
    [Person.sharedInstance.pets addObject:self.inputNameTextField.text];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
