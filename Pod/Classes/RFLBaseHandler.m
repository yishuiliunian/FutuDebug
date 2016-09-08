//
//  RFLBaseHandler.m
//  Futuniuniu
//
//  Created by stonedong on 16/8/31.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import "RFLBaseHandler.h"
#import <Opee/Opee.h>


@interface NSDictionary (PrintAllPair)
- (void) displayAllPair;
@end

@implementation NSDictionary(PrintAllPair)

- (void) displayAllPair
{
    NSLog(@"###################Show Dictioanry");
    NSArray* allKeys = self.allKeys;
    for (NSString* key  in allKeys) {
        id value = [self objectForKey:key];
        NSLog(@"key:#{%@ : %@}   value#:#{%@ : %@}",key ,key.class,value,[value class]);
        
    }
    NSLog(@"###################End Dictioanry");
}

@end

typedef void(^ResponseBlcok)(id error, id response);
@implementation RFLBaseHandler
- (void) writeDictionary:(NSDictionary*)dicionary command:(unsigned short)cmd responseBlock:(ResponseBlcok)block
{
    NSLog(@"Current class is %@",self.class);
    static int SEQ = 1000;
    SEQ++;
    int seq = SEQ;
    if (cmd == 2641) {
        [dicionary displayAllPair];
    }
    NSLog(@"CMD SEQ%d cmd:%d paramters:%@ \n \n %@",seq, cmd, dicionary, block);
    ZKOrig(void,dicionary,cmd,^(id error, id response) {
        if (block!=NULL) {

            NSLog(@"SEQ %d CMD %d response is %@, error is %@, responseclass is %@",seq ,cmd,response, error, [response class]);
            block(error, response);
        }
    });
}
@end
