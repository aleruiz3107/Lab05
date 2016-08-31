//
//  MunicipalityDetails.m
//  Lab05
//
//  Created by Philbert on 6/26/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "MunicipalityDetails.h"

@interface MunicipalityDetails ()

@end

@implementation MunicipalityDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblMunicipio.text       = self.municipalityTitle;
    self.imgMunicipality.image   = [UIImage imageNamed:self.municipalityPhoto];
    
    // Products to Wash
    if([self.municipalityTitle  isEqual: @"NXT Generation Car Wash"]){
        self.lblMunicipioInfo.text   = @"Meguiars NXT Generation Car Wash has a advanced formulation and an exciting new look – a killer combo! Meguiar's expertise in Engineered Synthetic Polymers (ESP) has provided them with the technology to create a completely synthetic car wash concentrate that loosens and emulsifies even the toughest dirt and road grime.";
    }
    else if([self.municipalityTitle  isEqual: @"Optimum No Rinse - Wash & Wax"]){
        self.lblMunicipioInfo.text   = @"The Optimum No Rinse Wash & Wax takes all the great features of the original Optimum No Rinse and adds high quality carnauba wax into the equation!";
    }
    
    // Products to Wax or Sealant
    else if([self.municipalityTitle  isEqual: @"Chihuahua"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Chihuahua se encuentra exactamente en el centro del estado, en el fin de la regiÛn denominada como la Meseta y el principio de la llamada sierra, limita al norte con el municipio de Ahumada.";
    }
    else if([self.municipalityTitle  isEqual: @"Chinipas"]){
        self.lblMunicipioInfo.text   = @"ChÌnipas est· situada en la regiÛn de las caÒadas al occidente de la Sierra Madre Occidental, cercana a los lÌmites de Chihuahua con los estado de Sinaloa y Sonora, fue fundada como un pueblo de misiÛn por los sacerdotes jesuitas Pedro Juan Castini y Julio Pascual el 31 de diciembre de 1626.";
    }
    
    // Products for Pulish
    else if([self.municipalityTitle  isEqual: @"Puebla"]){
        self.lblMunicipioInfo.text   = @"El territorio municipal de Puebla es muy variado en su relieve y se encuentra dominado tanto por elevaciones importantes como por el Valle de Puebla-Tlaxcala en donde se asienta en su mayor parte la cabecera municipal.";
    }
    else if([self.municipalityTitle  isEqual: @"Ocotepec"]){
        self.lblMunicipioInfo.text   = @"Ocotepec (en nahuatl: ocotl, tepetl, c, ëocote, cerro, eníëOcote en el cerroí) es uno de los 217 municipios que conforman al estado mexicano de Puebla. Fue fundado en 1895 y su cabecera es la ciudad de Ocotepec.";
    }
    
    // Products for Wheels
    else if([self.municipalityTitle  isEqual: @"Culiacan"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Culiacan, capital del estado sinaloense, es uno de los 18 municipios en que se encuentra dividido el estado mexicano de Sinaloa.";
    }
    else if([self.municipalityTitle  isEqual: @"Sinaloa"]){
        self.lblMunicipioInfo.text   = @"Sinaloa es el municipio epÛnimo del estado mexicano en el que se encuentra. Se ubica al norte del estado, limita al norte con los municipios de El Fuerte y Choix; al sur con los de Salvador Alvarado, Mocorito y Badiraguato; al poniente con el de Guasave y al oriente con el estado de Chihuahua. Su cabecera municipal es la Villa de Sinaloa de Leyva.";
    }
    
    // Accesories
    else if([self.municipalityTitle  isEqual: @"Zacatecas"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Zacatecas es uno de los 58 municipios del estado de Zacatecas, MÈxico. La cabecera municipal es la capital del estado, la ciudad de Zacatecas.";
    }
    else if([self.municipalityTitle  isEqual: @"Villa Hidalgo"]){
        self.lblMunicipioInfo.text   = @"Alvarado es una ciudad localizada en el estado de Veracruz de Ignacio de la Llave en México. Su extensión territorial limita al norte con el municipio de Boca del Río y por ello forma parte de la Zona Metropolitana de Veracruz.";
    }        
        
    self.lblMunicipioInfo.numberOfLines = 0;
    [self.lblMunicipioInfo sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
