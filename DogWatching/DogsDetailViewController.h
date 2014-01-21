//
//  DogsDetailViewController.h
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DogSighting;

@interface DogsDetailViewController : UITableViewController

@property (strong, nonatomic) DogSighting *sighting;
@property (weak, nonatomic) IBOutlet UILabel *dogNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
