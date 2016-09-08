//
//  RNSControl.m
//  Futuniuniu
//
//  Created by stonedong on 16/8/31.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "RNSControl.h"
#import <Opee/Opee.h>

@implementation RNSControl
- (BOOL)sendAction:(SEL)theAction to:(id)theTarget
{
    NSLog(@"The Target:#{%@} action:#{%@}", theTarget, NSStringFromSelector(theAction));
    return ZKOrig(BOOL, theAction, theTarget);
}

@end
