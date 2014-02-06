//
//  ViewController.h
//  CollectionViewTest
//
//  Created by Beaudry Kock on 2/5/14.
//  Copyright (c) 2014 Better World Coding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExcerptCellView.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (nonatomic, assign) float margin ;
@end
