//
//  DogsMasterViewController.h
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DogSightingDataController;

@interface DogsMasterViewController : UITableViewController

@property (strong, nonatomic) DogSightingDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end
