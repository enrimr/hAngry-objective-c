#import "HANFoodCategory.h"

@interface HANFoodCategory ()

// Private interface goes here.

@end

@implementation HANFoodCategory

+(instancetype)foodCategoryWithName:(NSString *)name
                     foodCategoryId:(NSNumber *)foodCategoryId
                      pyramCategory:(HANFoodPyramCategory *)pyramCategory
                            context:(NSManagedObjectContext *)context {
    
    HANFoodCategory *foodCategory = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodCategory entityName]
                                                                  inManagedObjectContext:context];

    foodCategory.foodCategoryId = foodCategoryId;
    foodCategory.name = name;
    foodCategory.pyramCategory = pyramCategory;
    foodCategory.creationDate = [NSDate date];
    foodCategory.modificationDate = [NSDate date];
    
    return foodCategory;
}

@end
