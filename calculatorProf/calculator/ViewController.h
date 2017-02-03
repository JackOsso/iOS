//
//  ViewController.h
//  calculator
//
//  Created by Damiano Buscemi on 25/01/17.
//  Copyright © 2017 Cripsy Bacon S.r.l. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(IBAction)ButtonUnoPressed:(UIButton *)sender;

@property(nonatomic,weak) IBOutlet UILabel *display;

@end

