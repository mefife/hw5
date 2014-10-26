//
//  MEFTableViewController.m
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/23/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "MEFTableViewController.h"
#import "MEFBirthday.h"
#import "MEFSelectViewController.h"
#import "MEFSelectViewControllerDelegate.h"

@interface MEFTableViewController () <MEFSelectViewControllerDelegate>

@property MEFSelectViewController *selectViewController;
@property UINavigationController * navControllerSelect;
@end

@implementation MEFTableViewController

-(id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.BirthdayList = [NSMutableArray array];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addBirthday:)];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title = @"Birthdays";
    self.selectViewController = [[MEFSelectViewController alloc] init];
    self.selectViewController.delegate = self;
    self.navControllerSelect = [[UINavigationController alloc] initWithRootViewController:self.selectViewController];
    
}

-(void)viewWillAppear:(BOOL)animated
{

}


-(void)addBirthday:(id)sender; {
    
    //NSLog(@"Here is the date I got: %@",self.selectViewController.dateField.date);
    
    [self.navigationController presentViewController:self.navControllerSelect animated:YES completion:^{
    
        NSLog(@"Opened the view");
    
    }];
    
    //[self.BirthdayList addObject:[MEFBirthday createBirthday]];
    //[self.tableView insertRowsAtIndexPaths:@[ [NSIndexPath indexPathForRow:(self.BirthdayList.count - 1) inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];

}

-(void) SelectionViewClosing;
{
    //NSLog(@"Getting Called");
    MEFBirthday *BirthdayInfoAdd = [MEFBirthday createBirthday];
    BirthdayInfoAdd.Name = self.selectViewController.nameField.text;
    BirthdayInfoAdd.Bday = self.selectViewController.dateField.date;
    
    [self.BirthdayList addObject:BirthdayInfoAdd];
    [self.tableView insertRowsAtIndexPaths:@[ [NSIndexPath indexPathForRow:(self.BirthdayList.count - 1) inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    //return number of entries.count
    return self.BirthdayList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    MEFBirthday * personSelected = self.BirthdayList[indexPath.row];
    
    NSString * personName = personSelected.Name;
    NSDate *personBday = personSelected.Bday;
    
    // Add label on right for Date
    UILabel * dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(220, 0, 370, 40)];
    dateLabel.text = [NSDateFormatter localizedStringFromDate:personBday dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterNoStyle];
    dateLabel.backgroundColor = [UIColor clearColor];
    dateLabel.font = [UIFont fontWithName:@"Helvetica" size:18.0f];
    [cell.contentView addSubview:dateLabel];
    
    cell.textLabel.text = personName;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSParameterAssert(editingStyle == UITableViewCellEditingStyleDelete);
    [self.BirthdayList removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[ indexPath ] withRowAnimation:UITableViewRowAnimationAutomatic];
}


@end
