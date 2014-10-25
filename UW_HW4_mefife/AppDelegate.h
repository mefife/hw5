//
//  AppDelegate.h
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/22/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate, UITabBarDelegate> 

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong) NSMutableArray * MainBirthdayList;

@end

