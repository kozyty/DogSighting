//
//  AddSightingViewController.m
//  DogWatching
//
//  Created by kozyty on 2014/01/21.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import "AddSightingViewController.h"
#import "DogSighting.h"

@interface AddSightingViewController ()

@end

@implementation AddSightingViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.dogNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        if ([self.dogNameInput.text length] || [self.locationInput.text length]) {
            DogSighting *sighting;
            NSDate *today = [NSDate date];
            sighting = [[DogSighting alloc] initWithName:self.dogNameInput.text location:self.locationInput.text date:today];
            self.dogSighting = sighting;
        }
    }
}
@end