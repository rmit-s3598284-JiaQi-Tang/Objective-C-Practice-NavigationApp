//
//  SecondViewController.h
//  Objective-C_Practice
//
//  Created by JiaQi Tang on 9/10/18.
//  Copyright © 2018 JiaQi Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputNameTextField;
- (IBAction)buyButtonTapped:(id)sender;

@end

