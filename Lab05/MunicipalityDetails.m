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
    
    
    if([self.municipalityTitle  isEqual: @"Guadalajara"]){
        self.lblMunicipioInfo.text   = @"Guadalajara es una ciudad y municipio mexicano, capital y urbe más poblada del estado de Jalisco. Se localiza en el occidente de México, al centro de Jalisco, en la zona geográfica conocida como Valle de Atemajac.";
    }
    else if([self.municipalityTitle  isEqual: @"Chapala"]){
        self.lblMunicipioInfo.text   = @"Chapala es una ciudad mexicana ubicada en el estado de Jalisco, junto al Lago de Chapala, al cual otorga su nombre, es cabecera del mismo nombre.";
    }
    else if([self.municipalityTitle  isEqual: @"Cocula"]){
        self.lblMunicipioInfo.text   = @"Cocula (en náhuatl: Cocollán, ‘lugar ondulado’)? es una ciudad y municipio en el estado mexicano de Jalisco. Se encuentra a 35 millas (56 km) al suroeste de Guadalajara, en México la autopista 80. Se encuentra a una altura de 4.460 pies (1.350 m).";
    }
    else if([self.municipalityTitle  isEqual: @"Tapalpa"]){
        self.lblMunicipioInfo.text   = @"Tapalpa es un municipio y población del estado de Jalisco, México. Se localiza en la Región Sur, aproximadamente a 118 kilómetros de Guadalajara. Su nombre proviene del otomi y significa «Lugar de Tierra de Color», su extensión territorial es de 442.15 km2.";
    }
    else if([self.municipalityTitle  isEqual: @"Vallarta"]){
        self.lblMunicipioInfo.text   = @"Es la segunda zona económica más importante del estado de Jalisco y el tercer puerto más importante de México. Actualmente, es uno de los lugares más visitados del país. El nombre de este hermoso puerto está plasmado en varias canciones populares.";
    }
    else if([self.municipalityTitle  isEqual: @"Aquisimon"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Aquismón es uno de loa 58 municipios en que se divide el estado mexicano de San Luis Potosí, localizado al oriente del estado en la Región Huasteca";
    }
    else if([self.municipalityTitle  isEqual: @"Catorce"]){
        self.lblMunicipioInfo.text   = @"El Municipio de Catorce es uno de los 58 municipios en que se encuentra dividido para su régimen interior el estado mexicano de San Luis Potosí, localizado al norte del estado y su cabecera es Real de Catorce, un antiguo mineral.";
    }
    else if([self.municipalityTitle  isEqual: @"El Naranjo"]){
        self.lblMunicipioInfo.text   = @"El Naranjo es uno de los 58 municipios que constituyen el estado mexicano de San Luis Potosí. Se encuentra localizado al centro oeste del estado y aproximadamente a 173 kilómetros de la ciudad de San Luis Potosí.";
    }
    else if([self.municipalityTitle  isEqual: @"Xilitla"]){
        self.lblMunicipioInfo.text   = @"Xilitla es un municipio ubicado en la región de Huasteca, del estado de San Luis Potosí, México. Recién nombrado «Pueblo mágico» el 12 de diciembre de 2011, por la SECTUR. Es conocido por sus fértiles montañas y manantiales, que crean paisajes increíbles en todo el municipio. Xilitla es un municipio poco industrializado, lo que ha ayudado a preservar las culturas indígenas náhuatl y téenek y sus modos tradicionales de vida. Es famoso por su café y su producción de piloncillo, además de ser el lugar más lluvioso de San Luis Potosí.";
    }
    else if([self.municipalityTitle  isEqual: @"Zaragoza"]){
        self.lblMunicipioInfo.text   = @"Villa de Zaragoza es una ciudad del estado mexicano de San Luis Potosí y cabecera del municipio Zaragoza. Conocida durante muchos años con el nombre de Villa de Zaragoza, cambia a Zaragoza en 1995.";
    }
    else if([self.municipalityTitle  isEqual: @"Palenque"]){
        self.lblMunicipioInfo.text   = @"Palenque es una ciudad del estado mexicano de Chiapas. La ciudad de Palenque es una ciudad de origen maya ubicada en el estado mexicano de Chiapas, cerca del río Usumacinta, y cuyo principal atractivo turístico es la zona arqueológica de Palenque. A pocos kilómetros se encuentran las cascadas de Misol-Ha, Cascadas de Agua Azul y Agua Clara, el río Chacamax (nututun). Es uno de los sitios más impresionantes de esta cultura. En comparación con otras ciudades mayas, se la considera de tamaño mediano: menor que Tikal o Copán, pero destaca por su acervo arquitectónico y escultórico.";
    }
    else if([self.municipalityTitle  isEqual: @"Salto De Agua"]){
        self.lblMunicipioInfo.text   = @"El municipio de Salto de Agua es uno de los 122 municipios que conforman el estado de Chiapas. Abarca una parte del Área de Protección de Flora y Fauna “Cascadas de Agua Azul";
    }
    else if([self.municipalityTitle  isEqual: @"San Cristobal De Las Casas"]){
        self.lblMunicipioInfo.text   = @"San Cristóbal de Las Casas es la cabecera del municipio homónimo en el centro del estado de Chiapas (México). Es el mayor centro urbano de la región de Los Altos de Chiapas y el tercero mayor en el estado, detrás de Tuxtla Gutiérrez y Tapachulaen el Estado Libre y Soberano de Chiapas.";
    }
    else if([self.municipalityTitle  isEqual: @"Tapachula"]){
        self.lblMunicipioInfo.text   = @"Tapachula es una ciudad mexicana en el estado de Chiapas. Se encuentra en la Región del Soconusco. Se encuentra en la Costa Sur de Chiapas, limita al norte con Motozintla, al este con Cacahoatán, Tuxtla Chico, Frontera Hidalgo y Suchiate, al sur con el Océano Pacífico y al oeste con Huehuetán, Mazatán y Tuzantán";
    }
    else if([self.municipalityTitle  isEqual: @"Tuxtla"]){
        self.lblMunicipioInfo.text   = @"Tuxtla Gutiérrez es un municipio del estado mexicano de Chiapas. La cabecera municipal (o localidad Principal) es la Ciudad de Tuxtla Gutiérrez, es también la capital de Chiapas ya que en ella residen los poderes del estado, además de ser la ciudad más importante y más poblada de dicho territorio.";
    }
    else if([self.municipalityTitle  isEqual: @"Aguascalientes"]){
        self.lblMunicipioInfo.text   = @"Aguascalientes es la ciudad capital del estado mexicano de Aguascalientes, así como la cabecera del municipio del mismo nombre. La ciudad se encuentra en la zona centro-sur del estado, en el valle que lleva su mismo nombre. Es parte de la macro región del Bajío. Específicamente del Bajío Occidente.";
    }
    else if([self.municipalityTitle  isEqual: @"Calvillo"]){
        self.lblMunicipioInfo.text   = @"Calvillo es un municipio del estado mexicano de Aguascalientes. Su cabecera municipal lleva el mismo nombre Calvillo y se localiza a 52 kilómetros al poniente de la ciudad de Aguascalientes.";
    }
    else if([self.municipalityTitle  isEqual: @"Cosio"]){
        self.lblMunicipioInfo.text   = @"El municipio de Cosío se localiza al norte del estado de Aguascalientes, México, en las coordenadas 102°18' longitud oeste y 22°22' latitud norte, a una altura de 2.000 metros sobre el nivel del mar. Limita al norte con el estado de Zacatecas, al sur con el municipio de Rincón de Romos, y tanto al oriente como al poniente con el estado de Zacatecas y el municipio de Rincón de Romos.";
    }
    else if([self.municipalityTitle  isEqual: @"San Jose De Gracia"]){
        self.lblMunicipioInfo.text   = @"El Municipio de San José de Gracia es uno de los 11 municipios que integran al estado mexicano de Aguascalientes. Su cabecera municipal es la población de San José de Gracia.";
    }
    else if([self.municipalityTitle  isEqual: @"Tepezala"]){
        self.lblMunicipioInfo.text   = @"Tepezalá es una localidad del Estado de Aguascalientes, situado al noreste del estado, y colinda al norte con el Estado de Zacatecas. Está ubicado en las coordenadas geográficas 22º 13' de latitud norte y 102º 10' de longitud Oeste.";
    }
    else if([self.municipalityTitle  isEqual: @"Acajete"]){
        self.lblMunicipioInfo.text   = @"El municipio de Acajete se ubica en la zona centro del estado de Veracruz. Sus límites son: al norte con Tlacolulan y Las Vigas de Ramírez, al este con Rafael Lucio, al sur con Tlalnelhuayocan y al oeste con Perote. Su distancia aproximada por carretera a la capital del estado es de 15 km.";
    }
    else if([self.municipalityTitle  isEqual: @"Alvarado"]){
        self.lblMunicipioInfo.text   = @"Alvarado es una ciudad localizada en el estado de Veracruz de Ignacio de la Llave en México. Su extensión territorial limita al norte con el municipio de Boca del Río y por ello forma parte de la Zona Metropolitana de Veracruz.";
    }
    else if([self.municipalityTitle  isEqual: @"Apazapan"]){
        self.lblMunicipioInfo.text   = @"Apazapan se ubica en la zona central del Estado de Veracruz, presentando irregularidades en el suelo, recorrido por la barranca de Apazapan. Limita al norte con Emiliano Zapata, al sur con Puente Nacional y Tlaltetela, al este con Emiliano Zapata y Puente Nacional y al oeste con Jalcomulco.";
    }
    else if([self.municipalityTitle  isEqual: @"Catemaco"]){
        self.lblMunicipioInfo.text   = @"El municipio de Catemaco se encuentra en las inmediaciones de un cuerpo lacustre homónimo, la Laguna de Catemaco que es una de las principales atracciones turísticas, por sus especialidades gastronómicas lacustres (tegogolos, topotes, mojarras de Catemaco y varias especies endémicas de peces), así como por ser un centro importante de la tradición ancestral de la brujería.";
    }
    else if([self.municipalityTitle  isEqual: @"Xalapa"]){
        self.lblMunicipioInfo.text   = @"Xalapa-Enríquez, conocida comúnmente como Xalapa o Jalapa, es una ciudad mexicana, cabecera del municipio del mismo nombre y capital del estado de Veracruz de Ignacio de la Llave. Es conocida coloquialmente como La Atenas veracruzana3 y La ciudad de las flores.";
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
