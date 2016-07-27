//
//  ViewController.m
//  CustomSwitch
//
//  Created by Constantine Mars on 7/27/16.
//  Copyright © 2016 HealthPrize. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button setImage:[UIImage imageNamed:@"checkbox_on"] forState:UIControlStateSelected];
    [self.button setImage:[UIImage imageNamed:@"checkbox_off"] forState:UIControlStateNormal];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggle:(id)sender {
    self.button.selected = ! self.button.selected;
    NSLog(@"%d", self.button.isSelected);
}

@end
