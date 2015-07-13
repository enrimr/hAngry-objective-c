#import "_HANFoodAmount.h"

@interface HANFoodAmount : _HANFoodAmount {}

+(instancetype)foodAmountWithFood:(HANFood *)food
                           amount:(NSNumber *)amount
                             unit:(NSString *)unit
                            price:(NSNumber *)price
                     foodAmountId:(NSNumber *)foodAmountId
                   expirationDate:(NSDate *)expirationDate
                          context:(NSManagedObjectContext *)context;

@end
