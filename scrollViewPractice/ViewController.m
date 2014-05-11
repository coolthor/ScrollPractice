//
//  ViewController.m
//  scrollViewPractice
//
//  Created by Thor Lin on 2014/5/11.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myScrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // assuming the view is the only top-level object in the nib file (besides File's Owner and First Responder)
    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"Empty" owner:nil options:nil];
    UIView *nibView = [nibObjects objectAtIndex:0];
	// Do any additional setup after loading the view, typically from a nib.
    [myScrollView setScrollEnabled:YES];
    [myScrollView setContentSize:CGSizeMake(320, nibView.bounds.size.height)];
    [myScrollView addSubview:nibView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
