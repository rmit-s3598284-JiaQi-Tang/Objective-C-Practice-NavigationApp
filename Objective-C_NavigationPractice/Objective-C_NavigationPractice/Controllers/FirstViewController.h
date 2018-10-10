//
//  ViewController.h
//  Objective-C_Practice
//
//  Created by JiaQi Tang on 9/10/18.
//  Copyright © 2018 JiaQi Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "Person.h"
@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
-(void)reloadtabledata;
@end

