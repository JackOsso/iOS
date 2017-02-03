//
//  ViewController.m
//  calculator
//
//  Created by Damiano Buscemi on 25/01/17.
//  Copyright © 2017 Cripsy Bacon S.r.l. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSString * _valoreAttuale;
}


@end

@implementation ViewController

-(void)viewDidLoad{
    _valoreAttuale=@"";
}

-(IBAction)ButtonUnoPressed:(UIButton *)sender{
    NSLog(@"Premuto : %@" , sender.currentTitle);
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSLog(@"Button pressed %@", sender.currentTitle);
    NSString * messaggio = [NSString stringWithFormat:@"%@",sender.currentTitle];
    _valoreAttuale = [_valoreAttuale stringByAppendingString:messaggio];

    [self.display setText:_valoreAttuale];
}

@end
