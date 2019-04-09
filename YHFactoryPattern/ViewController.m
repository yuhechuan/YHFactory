//
//  ViewController.m
//  YHFactoryPattern
//
//  Created by ruaho on 2019/4/8.
//  Copyright © 2019 ruaho. All rights reserved.
//

#import "ViewController.h"
#import "MapEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<IMapFactory>factory = [[MapEngine sharedInstance] mapFactory];
    id<IMapView> mapView = [factory mapViewWithFrame:self.view.bounds];
    [self.view addSubview:[mapView mapView]];
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
