//
//  Pacco.m
//  Stoccaggio
//
//  Created by giacomo osso on 08/02/17.
//  Copyright © 2017 Giacomo Osso. All rights reserved.
//

#import "Pacco.h"

#import "Utils.h"

@implementation Pacco

-(id)initWithCodice:(NSString *)codice mittente:(NSString *)mittente destinatario:(NSString *)destinatario lunghezza:(NSInteger)lunghezza altezza:(NSInteger)altezza profondita:(NSInteger)profondita andMateriale:(Materiale)materiale{
    
    // chiamo il costruttore del mio oggetto da cui eredito (NSObject)
    self = [super init];
    
    // controllo se il costruttore padre ha allocato il mio oggetto
    if(self){
     // farò qualcosa qui
        _codice = codice;
        _mittente = mittente;
        _destinatario = destinatario;
        _lunghezza = lunghezza;
        _altezza = altezza;
        _profondita = profondita;
        _materiale = materiale;
        
    }
    
    //ritorno "me stesso" allocato o meno
    return self;
}

#pragma mark - Getters 
-(NSInteger)volume{
    return _lunghezza * _altezza * _profondita;
}

-(NSInteger)peso{
    NSInteger pesoSPecifico=0;
        switch (_materiale) {
        case MaterialeCarta:
            pesoSPecifico = kPesoSpecificoCarta;
            break;
        case MaterialeFerro:
            pesoSPecifico = kPesoSpecificoFerro;
            break;
        case MaterialePlastica:
            pesoSPecifico = kPesoSpecificoPlastica;
    }
    
    return [self volume] * pesoSPecifico;
}

#pragma mark - Override

-(NSString *)description{
    NSString *newDescription = [NSString stringWithFormat:@"%@ \nCodice : %@ \nMittente : %@ \nDestinatario : %@ \nLunghezza : %li \nAltezza : %li \nProfondita : %li \nVolume: %li \nMateriale : %li\nPeso: %li ", [super description], self.codice , self.mittente, self.destinatario, self.lunghezza, self.altezza, self.profondita, self.volume , self.materiale, self.peso/1000];
    return newDescription;
}

@end
