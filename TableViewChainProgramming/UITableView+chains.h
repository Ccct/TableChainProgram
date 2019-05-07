//
//  UITableView+chains.h
//  TableViewChainProgramming
//
//  Created by RLY on 2019/5/7.
//  Copyright © 2019 demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewChainTool.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (chains)

@property (nonatomic, strong) TableViewChainTool *ChainTool;

- (void)makeConfigure:(void (^)(TableViewChainTool *ChainTool))tb;

@end

NS_ASSUME_NONNULL_END
