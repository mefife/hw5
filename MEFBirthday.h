//
//  MEFBirthday.h
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/23/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MEFBirthday : NSObject
@property NSDate * Bday;
@property NSString * Name;
+(MEFBirthday *) createBirthday;

@end
