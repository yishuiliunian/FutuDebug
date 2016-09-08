//
//  FLATradeManagerReplace.m
//  Futuniuniu
//
//  Created by stonedong on 16/8/30.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "FLATradeManagerReplace.h"
#import <Opee/Opee.h>
@implementation FLATradeManagerReplace
- (void) orderMake:(id)object
{
    ZKOrig(void, object);
    NSLog(@"DZSZ  order is %@",object);
}

- (void) setSubAccount:(id)account
{
    NSLog(@"FLATradeManager %@ %@", NSStringFromSelector(_cmd), account);
    ZKOrig(void,account);
}
@end

