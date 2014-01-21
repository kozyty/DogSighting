//
//  DogsDetailViewController.m
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import "DogsDetailViewController.h"
#import "DogSighting.h"

@interface DogsDetailViewController ()
- (void)configureView;
@end

@implementation DogsDetailViewController

#pragma mark - Managing the detail item

- (void)setSighting:(DogSighting *)newSighting
{
    if (_sighting != newSighting) {
        _sighting = newSighting;
        
        // view update
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    DogSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theSighting) {
        self.dogNameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theSighting.date];
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
