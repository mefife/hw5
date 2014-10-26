//
//  MEFSelectViewController.m
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "MEFSelectViewController.h"

@interface MEFSelectViewController ()

@end

@implementation MEFSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(closeView:)];
    
    self.navigationItem.rightBarButtonItem = doneButton;
}

-(void)closeView:(id)sender;
{
    //self.dateField.date = self.dateChoosen;
    //self.nameField.text = self.nameWritten;
    [self.delegate SelectionViewClosing];
    [self dismissViewControllerAnimated:YES completion:^{
    
        NSLog(@"Closed view controller");
    
    }];

}

-(void)viewWillAppear:(BOOL)animated
{
    self.nameField.text = @"";
    self.dateField.date = [NSDate date];
}

@end
