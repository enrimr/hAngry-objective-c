//
//  HANFoodViewController.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 15/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import "HANFoodViewController.h"
#import "HANFoodType.h"
#import "HANFoodCategory.h"
#import "HANFoodPyramCategory.h"
#import "HANFoodAMount.h"
#import "HANFoodAMount.h"
#import "ATLAppDelegate.h"

@interface HANFoodViewController ()

@end

@implementation HANFoodViewController

- (id)initWithFood:(HANFood *)food{
    if (self = [super init]) {
        _food = food;
    }
    
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    _foodType.text = _food.type.name;
    _foodCategory.text = _food.type.category.name;
    _foodPyramCategory.text = _food.type.category.pyramCategory.name;
    
    __block NSNumber *totalAmount = @(0);
    __block NSString *unit = @"";
    [_food.amounts enumerateObjectsUsingBlock:^(HANFoodAmount *obj, BOOL * __nonnull stop) {
        totalAmount = [NSNumber numberWithFloat:([totalAmount floatValue] + [obj.amount floatValue])];
        if ([unit  isEqual:@""]) {
            unit = obj.unit;
        }
    }];
    
    _availableAmount.text = [NSString stringWithFormat:@"%@ %@", totalAmount, unit];
    
    /*NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:[HANFoodAmount entityName]];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"food.foodId == %@", _food.foodId]];
    request.predicate = predicate;
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:HANFoodAmountAttributes.creationDate
                                                              ascending:NO]];
    NSFetchedResultsController *results = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                              managedObjectContext:_food.managedObjectContext
                                                                                sectionNameKeyPath:nil
                                                                                         cacheName:nil];
    NSArray *requestResults = nil;
    
    ATLAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    NSError *error = nil;
    requestResults = [[appDelegate model] executeRequest:request
                                        withError:^(NSError *error) {
                                            NSLog(@"Error searching element: %@", request);
                                        }];
    
    if (error == nil){
        _availableAmount.text = [NSString stringWithFormat:@"%d",[requestResults count]];
    } else {
        _availableAmount.text = [NSString stringWithFormat:@"0"];
    }*/
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
