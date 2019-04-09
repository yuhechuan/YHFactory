//
//  MapXmlParser.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "MapXmlParser.h"
#import "Platform.h"

@interface MapXmlParser ()<NSXMLParserDelegate>

@property (nonatomic, strong) NSMutableArray *parserArray;

@end

@implementation MapXmlParser


- (NSMutableArray *)parserArray {
    if (!_parserArray) {
        _parserArray = [NSMutableArray array];
    }
    return _parserArray;
}

- (NSArray *)parser {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"mapConfig" ofType:@"xml"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    NSXMLParser *xmlParser = [[NSXMLParser alloc]initWithContentsOfURL:fileURL];
    xmlParser.delegate = self;
    [xmlParser parse];
    
    return [self.parserArray copy];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    // 解析
    if ([elementName isEqualToString:@"platform"]) {
        Platform *platform = [[Platform alloc]initWithDict:attributeDict];
        if (platform.appKey && platform.appKey.length > 0) {
            [self.parserArray addObject:platform];
        }
    }
}

@end
