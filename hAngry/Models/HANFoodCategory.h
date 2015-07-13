#import "_HANFoodCategory.h"

@interface HANFoodCategory : _HANFoodCategory {}

+(instancetype)foodCategoryWithName:(NSString *)name
                     foodCategoryId:(NSNumber *)foodCategoryId
                       pyramCategory:(HANFoodPyramCategory *)pyramCategory
                            context:(NSManagedObjectContext *)context;

@end
