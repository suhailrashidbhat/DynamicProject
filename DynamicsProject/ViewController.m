//
//  ViewController.m
//  DynamicsProject
//
//  Created by Suhail Rashid Bhat on 6/15/14.
//  Copyright (c) 2014 Suhail Rashid Bhat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            
@property (strong, nonatomic) IBOutlet UIImageView *movingImage;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundimage;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.movingImage.image = [UIImage imageNamed:@"sorry1.gif"];
    [self moveItBaby];
    self.backgroundimage.image = [UIImage imageNamed:@"IMAG1092.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moveItBaby {
    UIInterpolatingMotionEffect *xAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    xAxis.minimumRelativeValue = @-80;
    xAxis.maximumRelativeValue = @80;
    
    UIInterpolatingMotionEffect *yAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    yAxis.minimumRelativeValue = @-80;
    yAxis.maximumRelativeValue = @80;
    
    UIMotionEffectGroup *motionGroup = [[UIMotionEffectGroup alloc] init];
    motionGroup.motionEffects = @[xAxis, yAxis];
    
//    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.movingImage];
//    
//    
//    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.backgroundimage]];
//    gravity.gravityDirection = CGVectorMake(0.0, 4.0);
//    gravity.action = ^{
//    
//    };
//    [animator addBehavior:gravity];
    
    [self.movingImage addMotionEffect:motionGroup];
}

@end
