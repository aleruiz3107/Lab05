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

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;
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
    if([self.StateTitleSelected  isEqual: @"AGUASCALIENTES"]){
        
    self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes", @"Asientos", @"Calvillo", @"Cosio", @"El Llano", nil];
    
    self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Aguascalientes", @"Informacion sobre Asientos", @"Informacion sobre Calvillo", @"Informacion sobre Cosio", @"Informacion sobre El Llano", nil];
    
    self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"Agu_Aguascalientes", @"Agu_Asientos.jpg", @"Agu_Calvillo.jpg", @"Agu_Cosio.jpg", @"Agu_ElLlano.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"CHIHUAHUA"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Chihuahua", @"Chinipas", @"Delicias", @"Galeana", @"Santa Isabel", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Chihuahua", @"Informacion sobre Chinipas", @"Informacion sobre Delicias", @"Informacion sobre Galeana", @"Informacion sobre Santa Isabel", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"Chi_Chihuahua.jpg", @"Chi_Chinipas.jpg", @"Chi_Delicias.jpg", @"Chi_Galeana.jpg", @"Chi_SantaIsabel.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"PUEBLA"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Puebla", @"Ocotepec", @"Acajete", @"Tlahuapan", @"Zacatlan", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Puebla", @"Informacion sobre Ocotepec", @"Informacion sobre Acajete", @"Informacion sobre Tlahuapan", @"Informacion sobre Zacatlan", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"Pue_Puebla.jpg", @"Pue_Ocotepec.jpg", @"Pue_Acajete.jpg", @"Pue_Tlahuapan.jpg", @"Pue_Zacatlan.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"SINALOA"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Culiacan", @"Sinaloa", @"Mazatlan", @"Angostura", @"Concordia", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Culiacan", @"Informacion sobre Sinaloa", @"Informacion sobre Mazatlan", @"Informacion sobre Angostura", @"Informacion sobre Concordia", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"Sina_Culiacan.jpg", @"Sina_Sinaloa.jpg", @"Sina_Mazatlan.jpg", @"Sina_Angostura.jpg", @"Sina_Concordia.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"ZACATECAS"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Zacatecas", @"Villa Hidalgo", @"Trancoso", @"Fresnillo", @"Guadalupe", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Zacatecas", @"Informacion sobre Villa Hidalgo", @"Informacion sobre Trancoso", @"Informacion sobre Fresnillo", @"Informacion sobre Guadalupe", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"Zaca_Zacatecas.jpg", @"Zaca_VillaHidalgo.jpg", @"Zaca_Trancoso.jpg", @"Zaca_Fresnillo.jpg", @"Zaca_Guadalupe.jpg", nil];
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
    self.stTitleSelected        = self.MunicipalityTitles[indexPath.row];
    self.stDescriptionSelected  = self.MunicipalityDescription[indexPath.row];
    self.stPhotoSelected        = self.MunicipalityPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"MunicipalityDetails" sender:self];
    
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[MunicipalityDetails class]]) {
        MunicipalityDetails *Municipality     = [segue destinationViewController];
        Municipality.municipalityTitle        = self.stTitleSelected;
        Municipality.municipalityDescription  = self.stDescriptionSelected;
        Municipality.municipalityPhoto        = self.stPhotoSelected;
    }
}

@end
