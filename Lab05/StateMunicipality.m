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
    if([self.StateTitleSelected  isEqual: @"LAVADO Y SECADO"]){
        
    self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"NXT Generation Car Wash", @"Optimum No Rinse - Wash & Wax", nil];
    
    self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre NXT Generation Car Wash", @"Informacion sobre Optimum No Rinse - Wash & Wax", nil];
    
    self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"MeguiarsNXT.jpg", @"OptimumWashWax.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"CERAS Y SELLADORES"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"Poorboys Nattys Paste Wax", @"FinishKare 1000P Hi-Temp Sealant", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre Poorboys Nattys Paste Wax", @"Informacion sobre FinishKare 1000P Hi-Temp Sealant", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"NattysPasteWax.jpg", @"FinishKare100.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual: @"PULIDO"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"SONAX - Cut Max", @"Sonus Hand Polish Bundle", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre SONAX - Cut Max", @"Informacion sobre Sonus Hand Polish Bundle", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"CutMax.jpg", @"SonusHandPolish.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"RINES Y MOTOR"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"SONAX Wheel Cleaner Plus", @"Dodo Juice - Mellow Yellow Wheel Cleaner", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre SONAX Wheel Cleaner Plus", @"Informacion sobre Dodo Juice - Mellow Yellow Wheel Cleaner", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"WheelCleaner.jpg", @"DodoWheelCleaner.jpg", nil];
    }
    else if([self.StateTitleSelected  isEqual:@"ACCESORIOS"]){
        
        self.MunicipalityTitles   = [[NSMutableArray alloc] initWithObjects: @"GYEON - Q2M Large Detailing Kit", @"Meguiars Foam Applicators Pkg/2", nil];
        
        self.MunicipalityDescription   = [[NSMutableArray alloc] initWithObjects: @"Informacion sobre GYEON - Q2M Large Detailing Kit", @"Informacion sobre Meguiars Foam Applicators Pkg/2", nil];
        
        self.MunicipalityPhotos   = [[NSMutableArray alloc] initWithObjects: @"BagKit.jpg", @"FoamApplicators.jpg", nil];
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
