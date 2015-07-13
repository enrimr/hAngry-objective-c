#import "_HANFoodPyramCategory.h"

@interface HANFoodPyramCategory : _HANFoodPyramCategory {}

+(instancetype)foodPyramCategoryWithName:(NSString *)name
                     foodPyramCategoryId:(NSNumber *)foodPyramCategoryId
                                 context:(NSManagedObjectContext *)context;

@end
