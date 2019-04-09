//
//  Platform.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "Platform.h"

@implementation Platform

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        _mapId = dict[@"mapId"];
        _appKey = dict[@"appKey"];
        _factoryName = dict[@"factoryName"];
        _isOpen = dict[@"isOpen"];
    }
    return self;
}

@end
