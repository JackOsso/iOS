//
//  ScoreTableViewController.h
//  TapChallange
//
//  Created by giacomo osso on 18/01/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  ScoreTableViewDelegate <NSObject>

/// richiedo i risultati alla classe che conforma il mio protocollo
-(NSArray *)scoreTableViewFetchResults;

/// informo che ho terminato il fatch dei dati
-(void)scoreTableViewDidFetchResults;

@end


@interface ScoreTableViewController : UITableViewController


@property (nonatomic, strong) NSArray *scoresArray;

@property (nonatomic, unsafe_unretained) id <ScoreTableViewDelegate> delegate;

@end
