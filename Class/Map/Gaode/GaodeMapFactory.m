//
//  GaodeMapFactory.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/9.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "GaodeMapFactory.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "GaodeMapView.h"

@interface GaodeMapFactory ()

@end

@implementation GaodeMapFactory

//每个地图需要一个 appkey
- (instancetype)initWithAppKey:(NSString *)appKey {
    if (self = [super init]) {
        [AMapServices sharedServices].apiKey = appKey;
        [AMapServices sharedServices].enableHTTPS = YES;
    }
    return self;
}

// 获取地图显示view
- (id<IMapView>)mapViewWithFrame:(CGRect)frame {
    return [[GaodeMapView alloc]initWithFrame:frame];
}

@end
