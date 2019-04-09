//
//  BaiduMapFactory.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>

@interface BaiduMapFactory ()

@property (nonatomic, strong) BMKMapManager *mapManager;

@end

@implementation BaiduMapFactory

//每个地图需要一个 appkey
- (instancetype)initWithAppKey:(NSString *)appKey {
    if (self = [super init]) {
        _mapManager = [[BMKMapManager alloc] init];
        BOOL ret = [_mapManager start:appKey generalDelegate:nil];
        [BMKMapManager setCoordinateTypeUsedInBaiduMapSDK: BMK_COORDTYPE_COMMON];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

// 获取地图显示view
- (id<IMapView>)mapViewWithFrame:(CGRect)frame {
    return [[BaiduMapView alloc]initWithFrame:frame];
}

@end
