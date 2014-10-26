//
//  MEFSelectViewController.h
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MEFSelectViewControllerDelegate.h"

@interface MEFSelectViewController : UIViewController <UIPickerViewDelegate>
@property NSString * nameWritten;
@property NSDate * dateChoosen;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UIDatePicker *dateField;
@property (nonatomic,weak) id<MEFSelectViewControllerDelegate> delegate;
@end
