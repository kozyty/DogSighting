//
//  AddSightingViewController.h
//  DogWatching
//
//  Created by kozyty on 2014/01/21.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DogSighting;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *dogNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
@property (strong, nonatomic) DogSighting *dogSighting;

@end
