//
//  MRPRootViewController.m
//  In App Purchase Demo
//
//  Created by Ryan Poolos on 2/19/13.
//  Copyright (c) 2013 PopArcade. All rights reserved.
//

#import "MRPRootViewController.h"

@interface MRPRootViewController () <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *mainTable;
}
@end

@implementation MRPRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [mainTable setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    [mainTable setDataSource:self];
    [mainTable setDelegate:self];
    [self.view addSubview:mainTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - StoreKit

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}

#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
