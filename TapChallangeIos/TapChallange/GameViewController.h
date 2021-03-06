//
//  ViewController.h
//  TapChallange
//
//  Created by giacomo osso on 13/01/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScoreTableVIewController.h"

@interface GameViewController : UIViewController <ScoreTableViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel * tapsCounterLabel;
@property (nonatomic, weak) IBOutlet UILabel * timeLabel;

- (IBAction)buttonPressed:(id)sender;

-(IBAction)tapsGestureRecognizerDidRecognizerTap:(id)sender;

@end

