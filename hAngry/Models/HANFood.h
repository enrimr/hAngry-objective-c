#import "_HANFood.h"
#import "HANFoodType.h"

@interface HANFood : _HANFood {}

+(instancetype)foodWithName:(NSString *)name
                     foodId:(NSNumber *)foodId
                       type:(HANFoodType *)type
                    context:(NSManagedObjectContext *)context;

@end
