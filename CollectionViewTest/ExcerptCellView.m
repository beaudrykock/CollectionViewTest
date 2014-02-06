//
//  ExcerptCellView.m
//  CollectionViewTest
//
//  Created by Beaudry Kock on 2/5/14.
//  Copyright (c) 2014 Better World Coding. All rights reserved.
//

#import "ExcerptCellView.h"

@implementation ExcerptCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        
        [self.contentView addSubview:self.imageView];

        [self.imageView setContentMode:UIViewContentModeScaleAspectFill];
        [self.imageView setClipsToBounds:YES];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
