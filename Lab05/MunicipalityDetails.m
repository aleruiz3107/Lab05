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
    
    // Municipios de aguascalientes
    if([self.municipalityTitle  isEqual: @"Aguascalientes"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Aguascalientes es uno de los 11 municipios que integran al estado mexicano de Aguascalientes. Su cabecera municipal es la ciudad de Aguascalientes, la cual tambiÈn es la capital del estado.";
    }
    else if([self.municipalityTitle  isEqual: @"Asientos"]){
        self.lblMunicipioInfo.text   = @"El municipio de Asientos es mayoritariamente plano, formado por valles, que sin embargo en su parte noroeste tiene una serie de elevaciones importantes que constituyen la Sierra de Asientos, donde se encuentra el Cerro de Altamira y el Cerro San Juan, m·ximas elevaciones de su territorio.";
    }
    else if([self.municipalityTitle  isEqual: @"Calvillo"]){
        self.lblMunicipioInfo.text   = @"El municipio de Calvillo est· constituido en su mayor parte por un valle que corre en direcciÛn sudoeste, est· enmarcado por la sierra del Laurel en la parte sur y oriente formando el lÌmite estatal con el estado de Jalisco.";
    }
    else if([self.municipalityTitle  isEqual: @"Cosio"]){
        self.lblMunicipioInfo.text   = @"El municipio de CosÌo, en general, tiene un clima templado estepario con verano c·lido, una temperatura media anual de 15 ∞C, registr·ndose la m·s alta entre los meses de mayo y agosto, y la m·s baja entre diciembre, enero y febrero. La precipitaciÛn pluvial media anual es de 515 milÌmetros.";
    }
    else if([self.municipalityTitle  isEqual: @"El Llano"]){
        self.lblMunicipioInfo.text   = @"Llamado asÌ por que es la unica region en Aguascalientes donde existe un llano. Fue declarado oficialmente como municipio el 30 de enero de 1992. Actualmente Palo Alto, su cabecera principal, se encuentra sobre la antigua construccion de una hacienda, la cual pertenecio como muchas otras, a la familia Rincon Gallardo.";
    }
    // Municipios de Chihuahua
    else if([self.municipalityTitle  isEqual: @"Chihuahua"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Chihuahua se encuentra exactamente en el centro del estado, en el fin de la regiÛn denominada como la Meseta y el principio de la llamada sierra, limita al norte con el municipio de Ahumada.";
    }
    else if([self.municipalityTitle  isEqual: @"Chinipas"]){
        self.lblMunicipioInfo.text   = @"ChÌnipas est· situada en la regiÛn de las caÒadas al occidente de la Sierra Madre Occidental, cercana a los lÌmites de Chihuahua con los estado de Sinaloa y Sonora, fue fundada como un pueblo de misiÛn por los sacerdotes jesuitas Pedro Juan Castini y Julio Pascual el 31 de diciembre de 1626.";
    }
    else if([self.municipalityTitle  isEqual: @"Delicias"]){
        self.lblMunicipioInfo.text   = @"Delicias es el municipio m·s pequeÒo del estado de Chihuahua, teniendo una extensiÛn territorio de 335.43 kilÛmetros cuadrados, se encuentra en la zona centro del estado, colinda al norte con el municipio de Meoqui y con el municipio de Rosales y al sur con el municipio de Saucillo.";
    }
    else if([self.municipalityTitle  isEqual: @"Galeana"]){
        self.lblMunicipioInfo.text   = @"El municipio de Galeana se localiza en la zona noroeste del estado de Chihuahua, en una regiÛn fundamentalmente desÈrtica, tiene una extensiÛn total de 1,529 kilÛmetros cuadrados y una altitud promedio de 1,430 metros sobre el nivel del mar.";
    }
    else if([self.municipalityTitle  isEqual: @"Santa Isabel"]){
        self.lblMunicipioInfo.text   = @"La poblaciÛn de Santa Isabel fue fundada el aÒo de 1668 por religiosos franciscanos con el nombre de Santa Isabel de Tarahumares, por ser Èstos la principal etnia que habitaba en la regiÛn; Santa Isabel se encontraba en el lÌmite entre las misiones franciscanas (asentadas en la zona de la meseta y el desierto de Chihuahua) y las jesuitas (que se localizaban en la Sierra).";
    }
    
    // Municipios de Puebla
    else if([self.municipalityTitle  isEqual: @"Puebla"]){
        self.lblMunicipioInfo.text   = @"El territorio municipal de Puebla es muy variado en su relieve y se encuentra dominado tanto por elevaciones importantes como por el Valle de Puebla-Tlaxcala en donde se asienta en su mayor parte la cabecera municipal.";
    }
    else if([self.municipalityTitle  isEqual: @"Ocotepec"]){
        self.lblMunicipioInfo.text   = @"Ocotepec (en nahuatl: ocotl, tepetl, c, ëocote, cerro, eníëOcote en el cerroí) es uno de los 217 municipios que conforman al estado mexicano de Puebla. Fue fundado en 1895 y su cabecera es la ciudad de Ocotepec.";
    }
    else if([self.municipalityTitle  isEqual: @"Acajete"]){
        self.lblMunicipioInfo.text   = @"Los habitantes de Acajete se dedican principalmente a la siembra y cultivo de maÌz, frijol, durazno, capulin, calabaza, entre otros productos caracterÌsticos de la poblaciÛn. AsÌ como a las actividades de construcciÛn (albaÒileria, plomeria, herreria y carpinterÌa).";
    }
    else if([self.municipalityTitle  isEqual: @"Tlahuapan"]){
        self.lblMunicipioInfo.text   = @"El municipio de Tlahuapan se encuentra localizado en el centro oeste del estado, fronterizo con los estados de MÈxico y de Tlaxcala y en las faldas de la Sierra Nevada.";
    }
    else if([self.municipalityTitle  isEqual: @"Zacatlan"]){
        self.lblMunicipioInfo.text   = @"El territorio del municipio fue originalmente habitado por distintas tribus como los otomÌes, toltecas y chichimecas sin que ninguna de ellas se asentara definitivamente. La primera poblaciÛn estable fue Otlatlan, fundada en las cercanÌas de la ciudad de Zacatlan por la tribu zacateca, que llegÛ al territorio huyendo de la tribu Teochichimeca.";
    }
    
    // Municipios de Sinaloa
    else if([self.municipalityTitle  isEqual: @"Culiacan"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Culiacan, capital del estado sinaloense, es uno de los 18 municipios en que se encuentra dividido el estado mexicano de Sinaloa.";
    }
    else if([self.municipalityTitle  isEqual: @"Sinaloa"]){
        self.lblMunicipioInfo.text   = @"Sinaloa es el municipio epÛnimo del estado mexicano en el que se encuentra. Se ubica al norte del estado, limita al norte con los municipios de El Fuerte y Choix; al sur con los de Salvador Alvarado, Mocorito y Badiraguato; al poniente con el de Guasave y al oriente con el estado de Chihuahua. Su cabecera municipal es la Villa de Sinaloa de Leyva.";
    }
    else if([self.municipalityTitle  isEqual: @"Mazatlan"]){
        self.lblMunicipioInfo.text   = @"El municipio de Mazatlan es uno de los municipios del estado mexicano de Sinaloa, se localiza en la parte sur del estado.";
    }
    else if([self.municipalityTitle  isEqual: @"Angostura"]){
        self.lblMunicipioInfo.text   = @"En 1916, Angostura nace como municipio por la importancia econÛmica que habÌa logrado por medio de su agricultura. El General ¡ngel Flores, gobernador del estado, apoyÛ la solicitud de los vecinos que querÌan formar su propio municipio y dejar de pertenecer a la directorÌa de Mocorito.";
    }
    else if([self.municipalityTitle  isEqual: @"Concordia"]){
        self.lblMunicipioInfo.text   = @"El municipio de Concordia se ubica en la parte sur del estado, y limita al norte con el municipio de Mazatl·n, al sur con el municipio de Rosario, al este con el estado de Durango, y al oeste con los municipios de Mazatlan y Rosario. ";
    }
    
    // Municipios de Zacatecas
    else if([self.municipalityTitle  isEqual: @"Zacatecas"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Zacatecas es uno de los 58 municipios del estado de Zacatecas, MÈxico. La cabecera municipal es la capital del estado, la ciudad de Zacatecas.";
    }
    else if([self.municipalityTitle  isEqual: @"Villa Hidalgo"]){
        self.lblMunicipioInfo.text   = @"Alvarado es una ciudad localizada en el estado de Veracruz de Ignacio de la Llave en México. Su extensión territorial limita al norte con el municipio de Boca del Río y por ello forma parte de la Zona Metropolitana de Veracruz.";
    }
    else if([self.municipalityTitle  isEqual: @"Trancoso"]){
        self.lblMunicipioInfo.text   = @"En la historia del municipio han existido algunas personas que destacaron por su colaboraciÛn en el desarrollo de este en ·reas como el desarrollo social, la educaciÛn, entre otros.";
    }
    else if([self.municipalityTitle  isEqual: @"Fresnillo"]){
        self.lblMunicipioInfo.text   = @"Fresnillo (del latÌn Fraxinus) es uno de los 58 municipios del estado de Zacatecas, MÈxico. La cabecera municipal es la ciudad de Fresnillo de Gonz·lez EcheverrÌa.";
    }
    else if([self.municipalityTitle  isEqual: @"Guadalupe"]){
        self.lblMunicipioInfo.text   = @"Guadalupe surgiÛ en consecuencia al descubrimiento de las minas de Zacatecas en el siglo XVI, con el establecimiento de haciendas que producirÌan los principales abastos y beneficiarÌan los metales del real minero.";
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
