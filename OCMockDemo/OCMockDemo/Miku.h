//
//  Miku.h
//  OCMockDemo
//
//  Created by alezai on 16/6/11.
//  Copyright © 2016年 alezai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MikuHelper.h"

@interface Miku : NSObject

@property (nonatomic, strong) MikuHelper *helper;
@property (nonatomic, assign) BOOL singing;

- (void)sing;
- (void)dance;

@end
