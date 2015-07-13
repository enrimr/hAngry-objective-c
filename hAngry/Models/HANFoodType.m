#import "HANFoodType.h"

@interface HANFoodType ()

// Private interface goes here.

@end

@implementation HANFoodType

+(instancetype)foodTypeWithName:(NSString *)name
                     foodTypeId:(NSNumber *)foodTypeId
                        context:(NSManagedObjectContext *)context{
    HANFoodType *foodType = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodType entityName]
                                                          inManagedObjectContext:context];
    
    foodType.name = name;
    foodType.foodTypeId = foodTypeId;
    foodType.creationDate = [NSDate date];
    foodType.modificationDate = [NSDate date];
    
    return foodType;
}

@end
