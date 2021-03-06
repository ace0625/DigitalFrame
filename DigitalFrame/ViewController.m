//
//  ViewController.m
//  DigitalFrame
//
//  Created by Dan Hyunchan Kim on 2/16/17.
//  Copyright © 2017 hyunchan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, toggleButton, speedSlider, speedLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *cuteImages = [[NSArray alloc]initWithObjects:
                           [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           [UIImage imageNamed:@"6.jpg"],
                           [UIImage imageNamed:@"7.jpg"],
                           [UIImage imageNamed:@"8.jpg"],
                           [UIImage imageNamed:@"9.jpg"],
                           [UIImage imageNamed:@"10.jpg"],
                           [UIImage imageNamed:@"11.jpg"],
                           [UIImage imageNamed:@"12.jpg"],
                           [UIImage imageNamed:@"13.jpg"],
                           [UIImage imageNamed:@"14.jpg"],
                           [UIImage imageNamed:@"15.jpg"],
                           nil];
    imgView.animationImages = cuteImages;
    imgView.animationDuration = 15.0;
}

-(IBAction)toggleAction:(id)sender {
    if (imgView.isAnimating) {
        [imgView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    } else {
        imgView.animationDuration = speedSlider.value;
        [imgView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

-(IBAction)chagneSpeedAction:(id)sender {
    imgView.animationDuration = 15 - speedSlider.value;
    speedLabel.text = [NSString stringWithFormat:@"%.2f", speedSlider.value];
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    [imgView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
