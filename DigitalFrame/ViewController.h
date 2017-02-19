//
//  ViewController.h
//  DigitalFrame
//
//  Created by Dan Hyunchan Kim on 2/16/17.
//  Copyright © 2017 hyunchan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)toggleAction:(id)sender;
-(IBAction)chagneSpeedAction:(id)sender;
@end

