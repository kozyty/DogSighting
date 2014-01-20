//
//  DogsDetailViewController.h
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DogsDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
