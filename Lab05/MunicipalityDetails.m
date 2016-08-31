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
        self.lblMunicipioInfo.text   = @"Meguiars NXT Generation Car Wash has a advanced formulation and an exciting new look – a killer combo! Meguiar's expertise in Engineered Synthetic Polymers (ESP) has provided them with the technology to create a completely synthetic car wash concentrate that loosens and emulsifies even the toughest dirt and road grime.  PRICE $280.00";
    }
    else if([self.municipalityTitle  isEqual: @"Optimum No Rinse - Wash & Wax"]){
        self.lblMunicipioInfo.text   = @"The Optimum No Rinse Wash & Wax takes all the great features of the original Optimum No Rinse and adds high quality carnauba wax into the equation! PRICE $250.00";
    }
    
    // Products to Wax or Sealant
    else if([self.municipalityTitle  isEqual: @"Poorboys Nattys Paste Wax"]){
        self.lblMunicipioInfo.text   = @"As it says on the packaging, ‘easy on, easy off’ and that’s exactly what you get. This is a long lasting formula that can be used in the sun or the shade. It can be used on any colour of paintwork to give a lustrous shine and a real depth to your paintwork. PRICE $350.00";
    }
    else if([self.municipalityTitle  isEqual: @"FinishKare 1000P Hi-Temp Sealant"]){
        self.lblMunicipioInfo.text   = @"Developed from a West German process called Synthesis FinishKare 1000P is a blend of advanced pure synthetic materials. The result is a paste wax characterized by melting temps. of 250+ degrees, extreme hardness, extreme slickness, high gloss, and intensive wear without the quality fluctuations found in natural waxes.  PRICE $340.00";
    }
    
    // Products for Polish
    else if([self.municipalityTitle  isEqual: @"SONAX - Cut Max"]){
        self.lblMunicipioInfo.text   = @"Sonax Cut Max will quickly and effectively remove scratches and nibs on repaired  or original paintworks. As with all Sonax polishes the real advantage of this product is it only leaves minimum processing traces and virtually no polish residue at all thanks to it's low-dust technology!  PRICE $280.00";
    }
    else if([self.municipalityTitle  isEqual: @"Sonus Hand Polish Bundle"]){
        self.lblMunicipioInfo.text   = @"Sonus SFX-1 Restore polish has enough polishing power to cut through most surface defects by hand. You can use SFX-1 as a scratch remover, treating individual (localized) defects. If your paint finish is in poor condition, polish the entire vehicle to reveal fresh paint that can be polished to a high-gloss using SFX-2 Final Finish.  PRICE 300.00";
    }
    
    // Products for Wheels
    else if([self.municipalityTitle  isEqual: @"SONAX Wheel Cleaner Plus"]){
        self.lblMunicipioInfo.text   = @"Highly effective acid-free special cleaner for all types of steel and light alloy wheels. Easily removes even the most stubborn dirt such as burnt-on brake dust, oil and rubber residue and other road dirt from all types of steel and alloy wheels matt-effect.  PRICE $200.00";
    }
    else if([self.municipalityTitle  isEqual: @"Dodo Juice - Mellow Yellow Wheel Cleaner"]){
        self.lblMunicipioInfo.text   = @"Dodo Juice Mellow Yellow wheel cleaner has been specifically designed to attack dirt and brake dust on the surface of your wheels, without damaging the coating. It's high foaming formula gives it a longer dwell time allowing it to penetrate and cleanse.  PRICE $250.00";
    }
    
    // Accesories
    else if([self.municipalityTitle  isEqual: @"GYEON - Q2M Large Detailing Kit"]){
        self.lblMunicipioInfo.text   = @"The Gyeon Large Detailing Kit bag is a high quality bag that is ideal for carrying all your favourtite Gyeon detailing products.  PRICE $900.00";
    }
    else if([self.municipalityTitle  isEqual: @"Meguiars Foam Applicators Pkg/2"]){
        self.lblMunicipioInfo.text   = @"Meguiar’s Gold Class Applicator Pads are made from a tight cell, ultra soft foam that provides a even and safe wax application.  PRICE $15.00";
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
