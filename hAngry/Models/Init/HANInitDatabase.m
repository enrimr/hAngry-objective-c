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
    
    [self initFoodPyramCategory];
    [self initFoodCategory];
    [self initFoodType];
    [self initFood];
    [self initFoodAmount];
}

-(void)initFoodPyramCategory{

    [HANFoodPyramCategory foodPyramCategoryWithName:@"Breads, cereals, potatoes, pasta and rice"
                                foodPyramCategoryId:@0
                                            context:_appDelegate.model.context];
    
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Fruit and vegetables"
                                foodPyramCategoryId:@1
                                            context:_appDelegate.model.context];
    
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Milk, yoghurt and cheese"
                                foodPyramCategoryId:@2
                                            context:_appDelegate.model.context];
    
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Meat, poultry, fish, eggs, beans and nuts"
                                foodPyramCategoryId:@3
                                            context:_appDelegate.model.context];
    
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Reduced fat spreads and oils"
                                foodPyramCategoryId:@4
                                            context:_appDelegate.model.context];
    
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Foods and drinks high in fat"
                                foodPyramCategoryId:@5
                                            context:_appDelegate.model.context];
}

-(void)initFoodCategory{
    
    [HANFoodCategory foodCategoryWithName:@"Fruit" foodCategoryId:@0 pyramCategory:
    [HANFoodPyramCategory foodPyramCategoryWithName:@"Milk, yoghurt and cheese"
                                foodPyramCategoryId:@2
                                            context:_appDelegate.model.context]
                                  context:_appDelegate.model.context];
}

-(void)initFoodType{
    
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
    
    /*NSManagedObject *foodType = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodType entityName]
     inManagedObjectContext:self.model.context];
     
     [foodType setValue:@"milk" forKey:HANFoodTypeAttributes.name];
     [foodType setValue:@0 forKey:HANFoodTypeAttributes.foodTypeId];*/
    
    /*HANFoodType *foodType = [HANFoodType foodTypeWithName:@"Bread"
                                               foodTypeId:@0
                                                  context:appDelegate.model.context];*/
    
}

-(void)initFood{
    
    
}

-(void)initFoodAmount{
    
    
}

@end
