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
    id sth = [[UIApplication sharedApplication] delegate];
    if ([sth isKindOfClass:[AppController class]]) {        
        XBridgeTableViewController *tempTableViewController = [[XBridgeTableViewController alloc] initWithNibName:nil bundle:nil];        
        tempTableViewController.tableView.frame = CGRectMake(100, 100, 200, 100);
        AppController *controller = (AppController *)sth;
        [controller.viewController.view addSubview:tempTableViewController.tableView];
    }
}
