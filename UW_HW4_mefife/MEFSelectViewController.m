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
    [self dismissViewControllerAnimated:YES completion:nil];
    //[self.view removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
