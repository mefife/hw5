//
//  MEFBirthday.m
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/23/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "MEFBirthday.h"

@implementation MEFBirthday

+(MEFBirthday *) createBirthday; {
    MEFBirthday * person = [[MEFBirthday alloc] init];
    person.Name = @"Bill Jones";
    person.Bday =[NSDate date];
    return person;
}


@end
