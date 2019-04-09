//
//  MapEngine.h
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapEngine : NSObject

//单例模式
+(instancetype)sharedInstance;

// 获取工厂
- (id<IMapFactory>)mapFactory;

@end

NS_ASSUME_NONNULL_END
