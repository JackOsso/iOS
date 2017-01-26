//
//  ViewController.m
//  Calculator
//
//  Created by giacomo osso on 25/01/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSLog(@"Button Pressed %@", sender.currentTitle);
}

@end
