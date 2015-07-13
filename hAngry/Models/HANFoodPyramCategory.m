#import "HANFoodPyramCategory.h"

@interface HANFoodPyramCategory ()

// Private interface goes here.

@end

@implementation HANFoodPyramCategory

+(instancetype)foodPyramCategoryWithName:(NSString *)name
                     foodPyramCategoryId:(NSNumber *)foodPyramCategoryId
                                 context:(NSManagedObjectContext *)context{
    HANFoodPyramCategory *foodPyramCategory = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodPyramCategory entityName]
                                                          inManagedObjectContext:context];
    
    foodPyramCategory.name = name;
    foodPyramCategory.foodPyramCategoryId = foodPyramCategoryId;
    foodPyramCategory.creationDate = [NSDate date];
    foodPyramCategory.modificationDate = [NSDate date];
    
    return foodPyramCategory;
}

@end
