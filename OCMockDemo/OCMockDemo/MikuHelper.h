//
//  MikuHelper.h
//  OCMockDemo
//
//  Created by alezai on 16/6/11.
//  Copyright © 2016年 alezai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MikuHelper : NSObject

+ (instancetype)shareInstance;

- (NSString *)fetchSong;

- (void)fetchSongByInternet:(void (^)(NSString *song))callback;

@end
