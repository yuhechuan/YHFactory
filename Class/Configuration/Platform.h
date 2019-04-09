//
//  Platform.h
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Platform : NSObject

@property (nonatomic, copy) NSString *mapId;
@property (nonatomic, copy) NSString *appKey;
@property (nonatomic, copy) NSString *factoryName;
@property (nonatomic, copy) NSString *isOpen;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
