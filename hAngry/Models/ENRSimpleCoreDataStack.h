//
//  AGTSimpleCoreDataStack.h
//  tuentiExercise
//
//  Created by Enrique Ismael Mendoza Robaina on 4/5/15.
//  Copyright (c) 2015 Enrique Ismael Mendoza Robaina. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface ENRSimpleCoreDataStack : NSObject

@property (strong, nonatomic, readonly) NSManagedObjectContext *context;

+ (NSString *)persistentStoreCoordinatorErrorNotificationName;

+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName
                          databaseFilename:(NSString *)aDBName;

+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName;

+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName
                               databaseURL:(NSURL *)aDBURL;

- (id)initWithModelName:(NSString *)aModelName databaseURL:(NSURL *)aDBURL;

- (void)zapAllData;

- (void)saveWithErrorBlock:(void(^)(NSError *error))errorBlock;
-(NSArray *)executeRequest:(NSFetchRequest *)request
                 withError:(void(^)(NSError *error))errorBlock;
@end
