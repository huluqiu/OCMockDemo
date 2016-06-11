//
//  Miku.m
//  OCMockDemo
//
//  Created by alezai on 16/6/11.
//  Copyright © 2016年 alezai. All rights reserved.
//

#import "Miku.h"

@implementation Miku

- (void)sing {
    [[MikuHelper shareInstance] fetchSongByInternet:^(NSString *song) {
        if (song) {
            self.singing = YES;
            [self dance];
        }else {
            self.singing = NO;
        }
    }];
}

- (void)dance {
    
}

@end
