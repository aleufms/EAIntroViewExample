//
//  AAViewController.m
//  EAIntroViewExample
//
//  Created by Alessandro Nakamuta on 11/11/13.
//  Copyright (c) 2013 Alessandro. All rights reserved.
//

#import "AAViewController.h"
#import <EAIntroView/EAIntroView.h>
#import "AAIntroView.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self presentIntroduction];
}

-(void)presentIntroduction{
    NSArray *tutorialString = @[@"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque",
                                @"Nemo enim ipsam voluptatem quia voluptas sit aspernatur ",
                                @"Ut enim ad minima veniam, quis nostrum exercitationem",];
    
    NSMutableArray *pages = [NSMutableArray arrayWithCapacity:tutorialString.count];
    [tutorialString enumerateObjectsUsingBlock:^(NSString *text, NSUInteger idx, BOOL *stop) {
        AAIntroView *pageView = [[NSBundle mainBundle] loadNibNamed:@"AAIntroView" owner:self options:nil][0];
        [pageView setPageNumber:(idx+1)];
        [pageView setText:text];
        [pageView setFrame:CGRectMake(0, 0, pageView.frame.size.width, [UIScreen mainScreen].bounds.size.height)];
        pages[idx] = [EAIntroPage pageWithCustomView:pageView];
    }];
    
    
    EAIntroView *intro = [[EAIntroView alloc] initWithFrame:self.view.frame andPages:pages];
    [intro showInView:self.view animateDuration:0];
}



@end
