//
//  RFLTradeService.m
//  Futuniuniu
//
//  Created by stonedong on 16/8/31.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "RFLTradeService.h"
#import <Opee/Opee.h>


@implementation RFLTradeService

+ (id)   tradeService
{
    return ZKOrig(id);
}

- (id) orderHandler
{
    return ZKOrig(id);
}

- (id) tradeManagerForSubAccount:(id)account
{
    NSLog(@"Account %@ , class %@",account, [account class]);
    return  ZKOrig(id, account);
}

@end



@implementation OFLTradeService

+ (OFLTradeService*)   tradeService
{
    Class orderServiceClass = NSClassFromString(@"FLTradeService");
    return [orderServiceClass tradeService];
}


@end