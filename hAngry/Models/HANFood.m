#import "HANFood.h"

@interface HANFood ()

// Private interface goes here.

@end

@implementation HANFood

+(instancetype)foodWithName:(NSString *)name
                     foodId:(NSNumber *)foodId
                       type:(HANFoodType *)type
                    context:(NSManagedObjectContext *)context{
    
    HANFood *food = [NSEntityDescription insertNewObjectForEntityForName:[HANFood entityName]
                                                  inManagedObjectContext:context];
    
    food.name = name;
    food.foodId = foodId;
    food.type = type;
    food.creationDate = [NSDate date];
    food.modificationDate = [NSDate date];
    
    return food;
}

@end
