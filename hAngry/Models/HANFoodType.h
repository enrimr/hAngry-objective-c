#import "_HANFoodType.h"

@interface HANFoodType : _HANFoodType {}
// Custom logic goes here.

+(instancetype)foodTypeWithName:(NSString *)name
                     foodTypeId:(NSNumber *)foodTypeId
                       category:(HANFoodCategory *)category
                        context:(NSManagedObjectContext *)context;

@end
