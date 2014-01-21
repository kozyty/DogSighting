//
//  DogSighting.h
//  DogWatching
//
//  Created by kozyty on 2014/01/20.
//  Copyright (c) 2014年 nanapi.inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DogSighting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;

@end
