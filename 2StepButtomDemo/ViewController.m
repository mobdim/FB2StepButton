//
//  ViewController.m
//  2StepButtomDemo
//
//  Created by Fernando Bass on 9/11/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#import "ViewController.h"
#import "FB2StepButton.h"

@interface ViewController () <FB2StepButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    FB2StepButton *fbButton = [[FB2StepButton alloc] initWithDelegate:self position:CGPointMake(200, 200)];
    fbButton.slide = FB2StepButtonSlideRight;
    [self.view addSubview:fbButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
#pragma mark FB2StepButtonDelegate
- (void)clickedButtonWithAction:(FB2StepButtonStep)step
{
    NSLog(@"%d", step);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
