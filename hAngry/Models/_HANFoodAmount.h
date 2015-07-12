// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodAmount.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodAmountAttributes {
	__unsafe_unretained NSString *amount;
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *expirationDate;
	__unsafe_unretained NSString *foodAmountId;
	__unsafe_unretained NSString *measureUnit;
	__unsafe_unretained NSString *price;
	__unsafe_unretained NSString *updateDate;
} HANFoodAmountAttributes;

extern const struct HANFoodAmountRelationships {
	__unsafe_unretained NSString *bought;
} HANFoodAmountRelationships;

@class HANFood;

@interface HANFoodAmountID : NSManagedObjectID {}
@end

@interface _HANFoodAmount : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodAmountID* objectID;

@property (nonatomic, strong) NSNumber* amount;

@property (atomic) float amountValue;
- (float)amountValue;
- (void)setAmountValue:(float)value_;

//- (BOOL)validateAmount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* expirationDate;

//- (BOOL)validateExpirationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodAmountId;

@property (atomic) int64_t foodAmountIdValue;
- (int64_t)foodAmountIdValue;
- (void)setFoodAmountIdValue:(int64_t)value_;

//- (BOOL)validateFoodAmountId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* measureUnit;

//- (BOOL)validateMeasureUnit:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* price;

@property (atomic) float priceValue;
- (float)priceValue;
- (void)setPriceValue:(float)value_;

//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* updateDate;

//- (BOOL)validateUpdateDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFood *bought;

//- (BOOL)validateBought:(id*)value_ error:(NSError**)error_;

@end

@interface _HANFoodAmount (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveAmount;
- (void)setPrimitiveAmount:(NSNumber*)value;

- (float)primitiveAmountValue;
- (void)setPrimitiveAmountValue:(float)value_;

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSDate*)primitiveExpirationDate;
- (void)setPrimitiveExpirationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodAmountId;
- (void)setPrimitiveFoodAmountId:(NSNumber*)value;

- (int64_t)primitiveFoodAmountIdValue;
- (void)setPrimitiveFoodAmountIdValue:(int64_t)value_;

- (NSString*)primitiveMeasureUnit;
- (void)setPrimitiveMeasureUnit:(NSString*)value;

- (NSNumber*)primitivePrice;
- (void)setPrimitivePrice:(NSNumber*)value;

- (float)primitivePriceValue;
- (void)setPrimitivePriceValue:(float)value_;

- (NSDate*)primitiveUpdateDate;
- (void)setPrimitiveUpdateDate:(NSDate*)value;

- (HANFood*)primitiveBought;
- (void)setPrimitiveBought:(HANFood*)value;

@end
