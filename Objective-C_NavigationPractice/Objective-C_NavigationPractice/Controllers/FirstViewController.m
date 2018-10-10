//
//  ViewController.m
//  Objective-C_Practice
//
//  Created by JiaQi Tang on 9/10/18.
//  Copyright © 2018 JiaQi Tang. All rights reserved.
//

#import "FirstViewController.h"
#import "Person.h"


@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _greetingLabel.text = [[@"Here are " stringByAppendingString: Person.sharedInstance.name] stringByAppendingString: @"'s pets:"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self reloadtabledata];
}
- (void)viewWillAppear:(BOOL)animated {
    [self reloadtabledata];
}
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%@", Person.sharedInstance.pets);
}
-(void)reloadtabledata
{
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [Person.sharedInstance.pets count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [Person.sharedInstance.pets objectAtIndex: indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [Person.sharedInstance.pets removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
    [self showSimpleInformationalAlert];
}

-(void)showSimpleInformationalAlert
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@""
                                 message:@"you just deleted a super adorable pet !"
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okButton = [UIAlertAction
                                actionWithTitle:@"I don't care"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                }];
    [alert addAction:okButton];
    [self presentViewController:alert animated:YES completion:nil];
}

@end

