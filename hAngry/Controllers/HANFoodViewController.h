//
//  HANFoodViewController.h
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 15/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HANFood.h"

@interface HANFoodViewController : UIViewController

@property (strong, nonatomic) HANFood *food;
@property (weak, nonatomic) IBOutlet UILabel *foodType;
@property (weak, nonatomic) IBOutlet UILabel *foodCategory;
@property (weak, nonatomic) IBOutlet UILabel *foodPyramCategory;
@property (weak, nonatomic) IBOutlet UILabel *availableAmount;

- (id)initWithFood:(HANFood *)food;

@end
