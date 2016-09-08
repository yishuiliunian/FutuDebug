//
//  RFTLOrderViewController.m
//  Futuniuniu
//
//  Created by stonedong on 16/9/1.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "RFTLOrderViewController.h"
#import <Opee/Opee.h>
#import <DZRuntimeDump.h>
@implementation RFTLOrderViewController
- (instancetype) init
{
    return  ZKOrig(id);
}

- (void) viewDidAppear
{
    NSLog(@"设置OrderProvide");
    id provice = [self valueForKey:@"orderProvider"];
//    [self dumpAllInfo];
    ZKOrig(void);
}

- (void) setOrderStock:(id)stock
{
    DZPrintCallStackSymbols();
    NSLog(@"Set order Stock %@ ",stock);
    ZKOrig(void,stock);
}

- (void) setSubAccount:(id)account
{
    ZKOrig(void,account);
}

- (void) setOrderProvider:(id)provide
{

    ZKOrig(void,provide);
}
- (void) processOrderMake
{
    ZKOrig(void);
}
@end
