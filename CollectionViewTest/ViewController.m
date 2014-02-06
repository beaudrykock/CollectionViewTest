//
//  ViewController.m
//  CollectionViewTest
//
//  Created by Beaudry Kock on 2/5/14.
//  Copyright (c) 2014 Better World Coding. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.margin = 40.0;
    [self.collectionView registerClass:[ExcerptCellView class] forCellWithReuseIdentifier:@"ExcerptCellView"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return 7;
}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}
// 3
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ExcerptCellView *cell = (ExcerptCellView*)[cv dequeueReusableCellWithReuseIdentifier:@"ExcerptCellView" forIndexPath:indexPath];
    
    if (!cell)
    {
        cell = [[ExcerptCellView alloc] init];
    }
    cell.backgroundColor = [UIColor whiteColor];
    
    NSString *randomTitle = [NSString stringWithFormat:@"shot%i", arc4random()%7];
    
    UIImage *image = [UIImage imageNamed:randomTitle];
    
    cell.imageView.image = image;
    return cell;
}
// 4
/*- (UICollectionReusableView *)collectionView:
 (UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
 {
 return [[UICollectionReusableView alloc] init];
 }*/

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %i", indexPath.row);
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}

#pragma mark – UICollectionViewDelegateFlowLayout

// 1
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation]))
    {
        return CGSizeMake((768.0-(self.margin*3))/2.0, (1024.0-(self.margin*3))/2.5);
    }
    else
    {
        return CGSizeMake((1024.0-(self.margin*3))/2.0, (768.0-(self.margin*3))/2.0);
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return self.margin;
}


// 3
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(self.margin, self.margin, self.margin, self.margin);
}
@end
