#import "HANFoodAmount.h"

@interface HANFoodAmount ()

// Private interface goes here.

@end

@implementation HANFoodAmount

+(instancetype)foodAmountWithFood:(HANFood *)food
                           amount:(NSNumber *)amount
                             unit:(NSString *)unit
                            price:(NSNumber *)price
                     foodAmountId:(NSNumber *)foodAmountId
                   expirationDate:(NSDate *)expirationDate
                          context:(NSManagedObjectContext *)context{

    HANFoodAmount *foodAmount = [NSEntityDescription insertNewObjectForEntityForName:[HANFoodAmount entityName]
                                                              inManagedObjectContext:context];
    
    foodAmount.food = food;
    foodAmount.amount = amount;
    foodAmount.unit = unit;
    foodAmount.foodAmountId = foodAmountId;
    foodAmount.price = price;
    foodAmount.expirationDate = expirationDate;
    foodAmount.creationDate = [NSDate date];
    foodAmount.modificationDate = [NSDate date];
    
    return foodAmount;
}

@end
