//
//  MapEngine.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "MapEngine.h"
#import "MapXmlParser.h"
#import "Platform.h"

@interface MapEngine ()

@property (nonatomic, strong) NSArray *parserArray;

@end

@implementation MapEngine


static MapEngine *instance = nil;

//单例模式
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MapEngine alloc]init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (!instance) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            instance = [super allocWithZone:zone];
        });
    }
    return instance;
}

- (instancetype)init {
    if(self = [super init]) {
        [self startParser];
    }
    return self;
}

- (void)startParser {
    MapXmlParser *xmlParser = [[MapXmlParser alloc]init];
    _parserArray = [xmlParser parser];
}

- (id<IMapFactory>)mapFactory {
    
    id<IMapFactory>factory = nil;
    for (Platform *platForm in _parserArray) {
        if([platForm.isOpen isEqualToString:@"YES"]){
            factory = [[NSClassFromString(platForm.factoryName) alloc]initWithAppKey:platForm.appKey];
            break;
        }
    }
    return factory;
}

@end
