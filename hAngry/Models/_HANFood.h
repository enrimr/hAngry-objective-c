// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFood.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodId;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} HANFoodAttributes;

extern const struct HANFoodRelationships {
	__unsafe_unretained NSString *amounts;
	__unsafe_unretained NSString *type;
} HANFoodRelationships;

@class HANFoodAmount;
@class HANFoodType;

@interface HANFoodID : NSManagedObjectID {}
@end

@interface _HANFood : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodId;

@property (atomic) int64_t foodIdValue;
- (int64_t)foodIdValue;
- (void)setFoodIdValue:(int64_t)value_;

//- (BOOL)validateFoodId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *amounts;

- (NSMutableSet*)amountsSet;

@property (nonatomic, strong) HANFoodType *type;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;

@end

@interface _HANFood (AmountsCoreDataGeneratedAccessors)
- (void)addAmounts:(NSSet*)value_;
- (void)removeAmounts:(NSSet*)value_;
- (void)addAmountsObject:(HANFoodAmount*)value_;
- (void)removeAmountsObject:(HANFoodAmount*)value_;

@end

@interface _HANFood (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodId;
- (void)setPrimitiveFoodId:(NSNumber*)value;

- (int64_t)primitiveFoodIdValue;
- (void)setPrimitiveFoodIdValue:(int64_t)value_;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveAmounts;
- (void)setPrimitiveAmounts:(NSMutableSet*)value;

- (HANFoodType*)primitiveType;
- (void)setPrimitiveType:(HANFoodType*)value;

@end
