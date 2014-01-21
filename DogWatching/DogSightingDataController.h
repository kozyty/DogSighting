//
//  DogSightingDataController.h
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DogSighting;

@interface DogSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterDogSightingList;

- (NSInteger)countOfList;
- (DogSighting *)objectInListAtIndex:(NSInteger)theIndex;
- (void)addDogSightingWithSighting:(DogSighting *)sighting;

@end
