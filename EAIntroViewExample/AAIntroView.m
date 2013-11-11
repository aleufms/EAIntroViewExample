//
//  AAIntroView.m
//  EAIntroViewExample
//
//  Created by Alessandro Nakamuta on 11/11/13.
//  Copyright (c) 2013 Alessandro. All rights reserved.
//

#import "AAIntroView.h"

@interface AAIntroView ()

@property (weak, nonatomic) IBOutlet UILabel *pageNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation AAIntroView

-(void)setText:(NSString *)text{
    self.textLabel.text = text;
}

-(void)setPageNumber:(NSUInteger)number{
    self.pageNumberLabel.text=[NSString stringWithFormat:@"%i", number];
}


@end
