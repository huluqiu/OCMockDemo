//
//  MikuHelper.m
//  OCMockDemo
//
//  Created by alezai on 16/6/11.
//  Copyright © 2016年 alezai. All rights reserved.
//

#import "MikuHelper.h"

@implementation MikuHelper

static MikuHelper *helper;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        helper = [MikuHelper new];
    });
    return helper;
}

- (NSString *)fetchSong {
    return nil;
}

- (void)fetchSongByInternet:(void (^)(NSString *))callback {
    
}

@end
