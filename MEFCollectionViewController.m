//
//  MEFCollectionViewController.m
//  UW_HW4_mefife
//
//  Created by Matthew Fife on 10/22/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "MEFCollectionViewController.h"

@interface MEFCollectionViewController ()

@end

@implementation MEFCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

-(id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;
{
    if (!(self = [super initWithCollectionViewLayout:layout])) {
        return nil;
    }
    return self;
}

    
-(void)viewDidLoad;
{
        
    }

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>
@end
