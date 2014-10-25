//
//  AppDelegate.m
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/22/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "AppDelegate.h"
#import "MEFTableViewController.h"
#import "MEFCollectionViewController.h"

@interface AppDelegate ()
@property MEFTableViewController * MEFTableView;
@property MEFCollectionViewController * MEFCollectionView;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.MainBirthdayList = [NSMutableArray array];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.MEFTableView = [[MEFTableViewController alloc] init];
    self.MEFCollectionView = [[MEFCollectionViewController alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    // set tags to figure out which view controller was selected
    UINavigationController *navControllerTable = [[UINavigationController alloc] initWithRootViewController:self.MEFTableView];
    UINavigationController *navControllerCollection = [[UINavigationController alloc] initWithRootViewController:self.MEFCollectionView];
    
    
    //ColorsViewController *colorsViewController = [[ColorsViewController alloc] init];
    //DataViewController *dataViewController = [[DataViewController alloc] init];
    [tabBarController setViewControllers:@[navControllerTable, navControllerCollection] animated:YES];
    navControllerTable.tabBarItem.title = @"Birthdays";
    navControllerCollection.tabBarItem.title = @"Birthdays";
    //MEFCollectionView.tabBarItem.title = @"Birthdays";
    self.window.rootViewController = tabBarController;
    tabBarController.delegate = self;
    
    //NSLog(@"Application changed");
    [self.window makeKeyAndVisible];
    
    return YES;
}

// Delegate Control for Tab Bar Selection

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (tabBarController.selectedIndex == 0) {
        NSLog(@"In Table View");
        
    }else if (tabBarController.selectedIndex == 1) {
        NSLog(@"In Collection View");
        self.MEFCollectionView.BirthdayList = self.MEFTableView.BirthdayList;
        NSLog(@"%lul",(unsigned long)self.MEFCollectionView.BirthdayList.count);
        //[self.MEFCollectionView.view reloadInputViews];
        //[self.MEFCollectionView.view setNeedsDisplay];
    }

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
