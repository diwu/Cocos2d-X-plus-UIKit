//
//  XBridgeViewController.cpp
//  xbridge
//
//  Created by diwwu on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "XBridge.h"
#include "AppController.h"
#include "RootViewController.h"
#include "XBridgeTableViewController.h"

using namespace cocos2d;

void XBridge::doSth() {
    CCLog(" - do sth ...");
    id sth = [[UIApplication sharedApplication] delegate];
    if ([sth isKindOfClass:[AppController class]]) {
        NSLog(@" - yes it's AppController");
        
        /*
        UIImageView *iconImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Icon.png"]];
        AppController *controller = (AppController *)sth;
        [controller.viewController.view addSubview:iconImageView];
         */
        
        XBridgeTableViewController *tempTableViewController = [[XBridgeTableViewController alloc] initWithNibName:nil bundle:nil];        
        tempTableViewController.tableView.frame = CGRectMake(100, 100, 200, 100);
        AppController *controller = (AppController *)sth;
        [controller.viewController.view addSubview:tempTableViewController.tableView];
    }
}
