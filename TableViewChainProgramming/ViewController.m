//
//  ViewController.m
//  TableViewChainProgramming
//
//  Created by RLY on 2019/5/7.
//  Copyright © 2019 demo. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+chains.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [tableView makeConfigure:^(TableViewChainTool * _Nonnull ChainTool) {
       
        ChainTool.bindTb(tableView, [UITableViewCell class]).totalSection(1).section(0).row(10).configureCell(@[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9"]);
    }];
    [self.view addSubview:tableView];
}

@end
