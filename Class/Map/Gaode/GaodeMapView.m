//
//  GaodeMapView.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/9.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeMapView ()

@property (nonatomic, strong) MAMapView *mapView;

@end

@implementation GaodeMapView


// 构造方法指定地图大小
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
        _mapView = [[MAMapView alloc]initWithFrame:frame];
    }
    return self;
}


// 返回地图视图
- (UIView *)mapView {
    return _mapView;
}

@end
