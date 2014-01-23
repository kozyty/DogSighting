//
//  DogSightingDataController.m
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import "DogSighting.h"
#import "DogSightingDataController.h"

@interface DogSightingDataController ()

- (void)initializeDefaultDataList;

@end

@implementation DogSightingDataController

-(void)initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterDogSightingList = sightingList;
    DogSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[DogSighting alloc] initWithName:@"柴犬" location:@"EveryWhere" date:today];
    [self addDogSightingWithSighting:sighting];
}

-(void)setMasterDogSightingList:(NSMutableArray *)newList {
    if (_masterDogSightingList != newList) {
        _masterDogSightingList = [newList mutableCopy];
    }
}

-(id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

-(NSInteger)countOfList {
    return [self.masterDogSightingList count];
}

-(DogSighting *)objectInListAtIndex:(NSInteger)theIndex {
    return [self.masterDogSightingList objectAtIndex:theIndex];
}

-(void)addDogSightingWithSighting:(id)sighting {
    [self.masterDogSightingList addObject:sighting];
}

@end
