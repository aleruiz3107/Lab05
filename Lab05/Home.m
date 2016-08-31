//
//  ViewController.m
//  Lab05
//
//  Created by Philbert on 6/26/16.
//  Copyright © 2016 Philbert. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *StateTitles;
@property NSMutableArray *StateDescription;
@property NSMutableArray *StatePhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;
@end

@implementation Home
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
    self.StateTitles   = [[NSMutableArray alloc] initWithObjects: @"LAVADO Y SECADO", @"CERAS Y SELLADORES", @"PULIDO", @"RINES Y MOTOR", @"ACCESORIOS", nil];
    
    self.StateDescription   = [[NSMutableArray alloc] initWithObjects: @"Conoce lo mejor para el Lavado", @"Las Mejores Seras y Selladores", @"Rayones pfff", @"Grasa en Rines desaste de el", @"Conoce todos nuestros accesorios", nil];
    
    self.StatePhotos   = [[NSMutableArray alloc] initWithObjects: @"LavadoEncerado.jpg", @"CeraSelladores.jpg", @"Puebla.jpg", @"Sinaloa.jpg", @"Zacatecas.jpg", nil];

}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.StateTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.lblEstado.text     = self.StateTitles[indexPath.row];
    cell.lblEstadoInf.text  = self.StateDescription[indexPath.row];
    cell.imgEstado.image    = [UIImage imageNamed:self.StatePhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //-------------------------------------------------------------------------------
    self.stTitleSelected        = self.StateTitles[indexPath.row];
    self.stDescriptionSelected  = self.StateDescription[indexPath.row];
    self.stPhotoSelected        = self.StatePhotos[indexPath.row];
    [self performSegueWithIdentifier:@"StateMunicipality" sender:self];
    
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[StateMunicipality class]]) {
        StateMunicipality *StateMu     = [segue destinationViewController];
        StateMu.StateTitleSelected        = self.stTitleSelected;
    }
}

@end