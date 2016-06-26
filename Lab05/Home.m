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
    self.StateTitles   = [[NSMutableArray alloc] initWithObjects: @"Jalisco", @"San Luis Potosi", @"Chiapas", @"Aguascalientes", @"Veracruz", nil];
    
    self.StateDescription   = [[NSMutableArray alloc] initWithObjects: @"Visita los municipios de Jalisco", @"Visita los municipios de San Luis Potosi", @"Visita los municipios de Chiapas", @"Visita los municipios de Aguascalientes", @"Visita los municipios de Veracruz", nil];
    
    self.StatePhotos   = [[NSMutableArray alloc] initWithObjects: @"Jalisco.jpg", @"San Luis Potosi.jpg", @"Chiapas.jpg", @"Aguascalientes.jpg", @"Veracruz.jpg", nil];

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
    //self.lblWarriorNames.text  = self.WarriorNames[indexPath.row];
    
    //if (self.WarriorNames[indexPath.row] != 0){
    //    self.lblWarriorNames.hidden = NO;
    //}
    
}

@end