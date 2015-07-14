//
//  HANInitDatabase.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 13/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import "HANInitDatabase.h"
#import "ATLAppDelegate.h"
#import "HANFood.h"
#import "HANFoodType.h"
#import "HANFoodAmount.h"
#import "HANFoodCategory.h"
#import "HANFoodPyramCategory.h"

@interface HANInitDatabase ()

@property (strong, nonatomic) ATLAppDelegate *appDelegate;
@property (strong, nonatomic) NSMutableArray *arrayOfFoodPyramCategories;
@property (strong, nonatomic) NSMutableArray *arrayOfFoodCategories;
@property (strong, nonatomic) NSMutableArray *arrayOfFoodTypes;
@property (strong, nonatomic) NSMutableArray *arrayOfFoodAmounts;
@property (strong, nonatomic) NSMutableArray *arrayOfFoods;

@end

@implementation HANInitDatabase

-(void)initDatabase{
    _appDelegate = [UIApplication sharedApplication].delegate;
    [_appDelegate.model zapAllData];
    
    // Pyram Category
    HANFoodPyramCategory *pyramBread = [HANFoodPyramCategory foodPyramCategoryWithName:@"Breads, cereals, potatoes, pasta and rice"
                                foodPyramCategoryId:@0
                                            context:_appDelegate.model.context];
    
    HANFoodPyramCategory *pyramFruit = [HANFoodPyramCategory foodPyramCategoryWithName:@"Fruit and vegetables"
                                foodPyramCategoryId:@1
                                            context:_appDelegate.model.context];
    
    HANFoodPyramCategory *pyramMilk = [HANFoodPyramCategory foodPyramCategoryWithName:@"Milk, yoghurt and cheese"
                                foodPyramCategoryId:@2
                                            context:_appDelegate.model.context];
    
    HANFoodPyramCategory *pyramMeat = [HANFoodPyramCategory foodPyramCategoryWithName:@"Meat, poultry, fish, eggs, beans and nuts"
                                foodPyramCategoryId:@3
                                            context:_appDelegate.model.context];
    
    HANFoodPyramCategory *pyramOils = [HANFoodPyramCategory foodPyramCategoryWithName:@"Reduced fat spreads and oils"
                                foodPyramCategoryId:@4
                                            context:_appDelegate.model.context];
    
    HANFoodPyramCategory *pyramFat = [HANFoodPyramCategory foodPyramCategoryWithName:@"Foods and drinks high in fat"
                                foodPyramCategoryId:@5
                                            context:_appDelegate.model.context];

    
    
    // Food Category
    HANFoodCategory *categoryMilk = [HANFoodCategory foodCategoryWithName:@"Milk"
                                                           foodCategoryId:@0
                                                            pyramCategory:pyramMilk
                                                                  context:_appDelegate.model.context];
    
    HANFoodCategory *categoryCoffee = [HANFoodCategory foodCategoryWithName:@"Coffee"
                                                           foodCategoryId:@1
                                                            pyramCategory:pyramBread
                                                                  context:_appDelegate.model.context];

    // FoodType
    HANFoodType *typeSemiMilk = [HANFoodType foodTypeWithName:@"Semi-skimmed Milk"
                                                   foodTypeId:@0
                                                     category:categoryMilk
                                                      context:_appDelegate.model.context];
    /*
     Ultramarinos Salado
     Ultramarinos Dulce
     Dietéticos y Ecológicos
     Panadería Pastelería
     Lácteos y Huevos
     Charcutería y Quesos
     Platos Preparados e Internacionales
     Carne
     Pescados y Mariscos
     Frutas y Verduras
     Congelados
     */
    
    // Food
    HANFood *carrefourMilk = [HANFood foodWithName:@"Carrefour Milk"
                                            foodId:@0
                                              type:typeSemiMilk
                                           context:_appDelegate.model.context];
    
    HANFood *nestleMilk = [HANFood foodWithName:@"Nestlé Milk"
                                            foodId:@1
                                              type:typeSemiMilk
                                           context:_appDelegate.model.context];

    
    // FoodAmount
    [HANFoodAmount foodAmountWithFood:carrefourMilk
                               amount:@(3)
                                 unit:@"l"
                                price:@(0.78)
                         foodAmountId:@0
                       expirationDate:[NSDate date]
                              context:_appDelegate.model.context];
    
    [HANFoodAmount foodAmountWithFood:carrefourMilk
                               amount:@(4.5)
                                 unit:@"l"
                                price:@(1.41)
                         foodAmountId:@1
                       expirationDate:[NSDate date]
                              context:_appDelegate.model.context];
    
    [HANFoodAmount foodAmountWithFood:carrefourMilk
                               amount:@(0.75)
                                 unit:@"l"
                                price:@(0.23)
                         foodAmountId:@1
                       expirationDate:[NSDate date]
                              context:_appDelegate.model.context];
    
}

@end
