//
//  RFLTradeService.h
//  Futuniuniu
//
//  Created by stonedong on 16/8/31.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFLTradeService : NSObject
+ (id)   tradeService;
- (id) orderHandler;
@end

@interface OFLTradeService : NSObject
+ (OFLTradeService*)   tradeService;
- (id) orderHandler;
- (id) tradeManagerForSubAccount:(id)account;
- (id) userManager;
@end