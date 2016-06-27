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
    self.lblMunicipioInfo.text   = self.municipalityDescription;
    self.imgMunicipality.image   = [UIImage imageNamed:self.municipalityPhoto];
    
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
