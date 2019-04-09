//
//  IMapView.h
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IMapView <NSObject>

// 返回地图视图
- (UIView *)mapView;

// 构造方法指定地图大小
- (instancetype)initWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
