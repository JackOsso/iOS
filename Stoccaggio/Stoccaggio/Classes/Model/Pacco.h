//
//  Pacco.h
//  Stoccaggio
//
//  Created by giacomo osso on 08/02/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import <Foundation/Foundation.h>
//header = metodi pubblici // .m implementation ...


typedef NS_ENUM(NSInteger, Materiale ){
    MaterialeFerro = 0,
    MaterialePlastica = 1,
    MaterialeCarta = 2
};

@interface Pacco : NSObject

/// costruttore
-(id)initWithCodice:(NSString *)codice mittente:(NSString *)mittente destinatario:(NSString *)destinatario lunghezza:(NSInteger *)lunghezza altezza:(NSInteger *)altezza profondita:(NSInteger *)profondita andMateriale:(Materiale)materiale;

/// condice
@property (nonatomic , strong, readonly) NSString *codice;

/// il mittente che ha spedito il pacco
@property (nonatomic , strong) NSString *mittente;

/// il destinatario del pacco
@property(nonatomic, strong) NSString *destinatario;

/// lunghezza del pacco
@property (nonatomic, readonly) NSInteger lunghezza;

/// altezza del pacco
@property (nonatomic, readonly) NSInteger altezza;

/// Profondità del pacco
@property (nonatomic, readonly) NSInteger profondita;

/// Volume del pacco , sola lettura -> da calcolare
@property (nonatomic, readonly) NSInteger volume;

/// Peso del pacco -> da calcolare
@property (nonatomic, readonly) NSInteger peso;

/// Tipologia materiale contenuto nel pacco
@property (nonatomic, readonly) Materiale materiale;

@end
