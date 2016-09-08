//
//  RFLStockManager.m
//  Futuniuniu
//
//  Created by stonedong on 16/9/6.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "RFLStockManager.h"
#import <Opee/Opee.h>
@implementation RFLStockManager
- (id) stockByID:(id)ID
{
//    NSLog(@"Get Stock By ID %@",ID);
    id stock =  ZKOrig(id,ID);
//    NSLog(@"Stock is %@",stock);
    return stock;
}
@end
