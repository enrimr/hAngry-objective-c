#import "HANFoodType.h"
#import "HANFoodCategory.h"

@interface HANFoodType ()

// Private interface goes here.

@end

@implementation HANFoodType

+(instancetype)foodTypeWithName:(NSString *)name
                     foodTypeId:(NSNumber *)foodTypeId
                       category:(HANFoodCategory *)category
                        context:(NSManagedObjectContext *)context{
    
    HANFoodType *foodType = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodType entityName]
                                                          inManagedObjectContext:context];
    
    foodType.name = name;
    foodType.foodTypeId = foodTypeId;
    foodType.creationDate = [NSDate date];
    foodType.modificationDate = [NSDate date];
    foodType.category = category;
    
    return foodType;
}

@end
