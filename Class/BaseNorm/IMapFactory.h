//
//  IMapFactory.h
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapView.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IMapFactory <NSObject>

//每个地图需要一个 appkey
- (instancetype)initWithAppKey:(NSString *)appKey;

// 获取地图显示view
- (id<IMapView>)mapViewWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
