//
//  TableViewChainTool.h
//  TableViewChainProgramming
//
//  Created by RLY on 2019/5/7.
//  Copyright © 2019 demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewChainTool : NSObject <UITableViewDataSource>

- (TableViewChainTool *(^)(UITableView *, Class))bindTb;

- (TableViewChainTool *(^)(NSInteger))totalSection;

- (TableViewChainTool *(^)(NSInteger))section;

- (TableViewChainTool *(^)(NSInteger))row;

- (TableViewChainTool *(^)(NSArray *))configureCell;

@end

NS_ASSUME_NONNULL_END
