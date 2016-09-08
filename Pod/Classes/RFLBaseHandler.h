//
//  RFLBaseHandler.h
//  Futuniuniu
//
//  Created by stonedong on 16/8/31.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^ResponseBlcok)(id error, id response);
@interface RFLBaseHandler : NSObject
- (void) writeDictionary:(NSDictionary*)dicionary command:(unsigned short)cmd responseBlock:(ResponseBlcok)block;
@end
