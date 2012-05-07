# Cocos2d X plus UIKit
This project demonstrates how we can add UIKit components onto the scene created by Cocos2d-X.

Youtube demo: <http://youtu.be/KesskERGoM0>

#The Magic Lies in
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

#Screenshot
![](http://pic.yupoo.com/diwup_v/BWM5cp78/hm13L.png)

#Contact
Email: <diwufet@gmail.com>