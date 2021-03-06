// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodType.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodTypeAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodTypeId;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} HANFoodTypeAttributes;

extern const struct HANFoodTypeRelationships {
	__unsafe_unretained NSString *category;
	__unsafe_unretained NSString *foods;
} HANFoodTypeRelationships;

@class HANFoodCategory;
@class HANFood;

@interface HANFoodTypeID : NSManagedObjectID {}
@end

@interface _HANFoodType : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodTypeID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodTypeId;

@property (atomic) int64_t foodTypeIdValue;
- (int64_t)foodTypeIdValue;
- (void)setFoodTypeIdValue:(int64_t)value_;

//- (BOOL)validateFoodTypeId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodCategory *category;

//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *foods;

- (NSMutableSet*)foodsSet;

@end

@interface _HANFoodType (FoodsCoreDataGeneratedAccessors)
- (void)addFoods:(NSSet*)value_;
- (void)removeFoods:(NSSet*)value_;
- (void)addFoodsObject:(HANFood*)value_;
- (void)removeFoodsObject:(HANFood*)value_;

@end

@interface _HANFoodType (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodTypeId;
- (void)setPrimitiveFoodTypeId:(NSNumber*)value;

- (int64_t)primitiveFoodTypeIdValue;
- (void)setPrimitiveFoodTypeIdValue:(int64_t)value_;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (HANFoodCategory*)primitiveCategory;
- (void)setPrimitiveCategory:(HANFoodCategory*)value;

- (NSMutableSet*)primitiveFoods;
- (void)setPrimitiveFoods:(NSMutableSet*)value;

@end
