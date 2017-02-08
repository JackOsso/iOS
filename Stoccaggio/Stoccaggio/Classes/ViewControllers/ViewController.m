//
//  ViewController.m
//  Stoccaggio
//
//  Created by giacomo osso on 08/02/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import "ViewController.h"

#import "Pacco.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Pacco *pacco = [[Pacco alloc] initWithCodice:@"00001" mittente:@"Jack" destinatario:@"Piero" lunghezza: 100 altezza:100 profondita:100 andMateriale:MaterialePlastica];
   // pacco.codice = @"00001";
    
    NSLog(@"\nPacco: %@", pacco);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
