//
//  StateMunicipality.m
//  Lab05
//
//  Created by Philbert on 6/26/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "StateMunicipality.h"

@interface StateMunicipality ()
@property NSMutableArray *MunicipalityTitles;
@property NSMutableArray *MunicipalityDescription;
@property NSMutableArray *MunicipalityPhotos;
@end

@implementation StateMunicipality

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    if([self.StateTitleSelected  isEqual: @"Jalisco"]){
        
    self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"Chapala", @"Cocula", @"Tapalpa", @"Vallarta", nil];
    
    self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Guadalajara", @"Informacion sobre Chapala", @"Informacion sobre Cocula", @"Informacion sobre Tapalpa", @"Informacion sobre Vallarta", nil];
    
    self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"JalGuadalajara.jpg", @"JalChapala.jpg", @"JalCocula.jpg", @"JalTapalpa.jpg", @"JalVallarta.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"San Luis Potosi"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Aquisimon", @"Catorce", @"El Naranjo", @"Xilitla", @"Zaragoza", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Aquisimon", @"Informacion sobre Catorce", @"Informacion sobre El Naranjo", @"Informacion sobre Xilitla", @"Informacion sobre Zaragoza", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"SLAquismon.jpg", @"SLCatorce.jpg", @"SLElnaranjo.jpg", @"SLXilitla.jpg", @"SLZaragoza.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"Chiapas"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Palenque", @"Salto De Agua", @"San Cristobal De Las Casas", @"Tapachula", @"Tuxtla", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Palenque", @"Informacion sobre Salto De Agua", @"Informacion sobre San Cristobal De Las Casas", @"Informacion sobre Tapachula", @"Informacion sobre Tuxtla", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"ChiPalenque.jpg", @"ChiSaltoDeAgua.jpg", @"ChiSanCristobalDeLasCasas.jpg", @"ChiTapachula.jpg", @"ChiTuxtla.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"Aguascalientes"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes", @"Calvillo", @"Cosio", @"San Jose De Gracia", @"Tepezala", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Aguascalientes", @"Informacion sobre Calvillo", @"Informacion sobre Cosio", @"Informacion sobre San Jose De Gracia", @"Informacion sobre Tepezala", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"AguascalientesAguascalientes.jpg", @"AguCalvillo.jpg", @"AguCosio.jpg", @"AguSanJoseDeGracia.jpg", @"AguTepezala.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"Veracruz"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Acajete", @"Alvarado", @"Apasapan", @"Catemaco", @"Xalapa", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Acajete", @"Informacion sobre Alvarado", @"Informacion sobre Apasapan", @"Informacion sobre Catemaco", @"Informacion sobre Xalapa", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"VerAcajete.jpg", @"VerAlvarado.jpg", @"VerApasapan.jpg", @"VerCatemaco.jpg", @"VerXalapa.jpg", nil];
    }

}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.MunicipalityTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMunicipality *cell = (cellMunicipality *)[tableView dequeueReusableCellWithIdentifier:@"cellMunicipality"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMunicipality" bundle:nil] forCellReuseIdentifier:@"cellMunicipality"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMunicipality"];
    }
    //Fill cell with info from arrays
    cell.lblMunicipality.text     = self.MunicipalityTitles[indexPath.row];
    cell.lblMunicipalityInfo.text  = self.MunicipalityDescription[indexPath.row];
    cell.imgMunicipality.image    = [UIImage imageNamed:self.MunicipalityPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //-------------------------------------------------------------------------------
    //self.stTitleSelected        = self.destinationTitles[indexPath.row];
    //self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    //self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    //[self performSegueWithIdentifier:@"StateMunicipality" sender:self];
    
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //if ([segue.destinationViewController isKindOfClass:[DestinationDetails class]]) {
    //    DestinationDetails *destination     = [segue destinationViewController];
    //    destination.destinationTitle        = self.stTitleSelected;
    //    destination.destinationDescription  = self.stDescriptionSelected;
    //    destination.destinationPhoto        = self.stPhotoSelected;
    //}
}

@end
