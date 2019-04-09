//
//  BaiduMapView.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>

@interface BaiduMapView ()

@property (nonatomic, strong) BMKMapView *mapView;

@end

@implementation BaiduMapView

// 构造方法指定地图大小
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}

// 返回地图视图
- (UIView *)mapView {
    return _mapView;
}


@end
