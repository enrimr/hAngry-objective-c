//
//  AppDelegate.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 4/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import "ATLAppDelegate.h"
#import "ENRSimpleCoreDataStack.h"
#import "HANFoodTableViewController.h"
#import "HANFood.h"
#import "HANFoodType.h"
#import "HANFoodAMount.h"

@interface ATLAppDelegate ()

@end

@implementation ATLAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.model = [ENRSimpleCoreDataStack coreDataStackWithModelName:@"Model"];
    [self initDataBase];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:[HANFood entityName]];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:HANFoodAttributes.updateDate
                                                              ascending:NO],
                                [NSSortDescriptor sortDescriptorWithKey:HANFoodAttributes.name
                                                              ascending:YES]];
    NSFetchedResultsController *results = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                          managedObjectContext:self.model.context
                                                                            sectionNameKeyPath:nil
                                                                                     cacheName:nil];
    
    HANFoodTableViewController *mainVC = [[HANFoodTableViewController alloc] initWithFetchedResultsController:results
                                                                                                        style:UITableViewStylePlain];
    
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = nvc;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)save{
    [self.model saveWithErrorBlock:^(NSError *error) {
        NSLog(@"Error while saving %s \n\n %@", __func__, error);
    }];
}

#pragma mark - InitDatabase
-(void)initDataBase{
    [self initFoodType];
}

-(void)initFoodType{
    /*NSManagedObject *foodType = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodType entityName]
                                                          inManagedObjectContext:self.model.context];
    
    [foodType setValue:@"milk" forKey:HANFoodTypeAttributes.name];
    [foodType setValue:@0 forKey:HANFoodTypeAttributes.foodTypeId];*/
    
    HANFoodType *foodType = [HANFoodType foodTypeWithName:@"Bread"
                                               foodTypeId:@0
                                                  context:self.model.context];
    
    /*foodType.name = @"Breads, cereals, potatoes, pasta and rice";
    foodType.foodTypeId = @0;
    
    foodType.name = @"Fruit and vegetables";
    foodType.foodTypeId = @1;
    
    foodType.name = @"Milk, yoghurt and cheese";
    foodType.foodTypeId = @2;
    
    foodType.name = @"Milk, poultry, fish, egs, beans and nuts";
    foodType.name = @"Reduced fat spreads and oils";
    foodType.name = @"Foods and drinks high in fat";*/
}

@end
