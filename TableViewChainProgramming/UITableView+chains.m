//
//  UITableView+chains.m
//  TableViewChainProgramming
//
//  Created by RLY on 2019/5/7.
//  Copyright © 2019 demo. All rights reserved.
//

#import "UITableView+chains.h"
#import <objc/runtime.h>

@implementation UITableView (chains)

- (void)setChainTool:(TableViewChainTool *)ChainTool {
    
    objc_setAssociatedObject(self, @selector(ChainTool), ChainTool, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TableViewChainTool *)ChainTool {
    
    return objc_getAssociatedObject(self, @selector(ChainTool));
}

- (void)makeConfigure:(void (^)(TableViewChainTool *))tb {
    
    TableViewChainTool *ChainTool = [TableViewChainTool new];
    !tb ? : tb(ChainTool);
    self.ChainTool = ChainTool;
}

@end
