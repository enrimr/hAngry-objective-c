// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFood.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodId;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *updateDate;
} HANFoodAttributes;

extern const struct HANFoodRelationships {
	__unsafe_unretained NSString *availableAmount;
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

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* updateDate;

//- (BOOL)validateUpdateDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodAmount *availableAmount;

//- (BOOL)validateAvailableAmount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodType *type;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;

@end

@interface _HANFood (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodId;
- (void)setPrimitiveFoodId:(NSNumber*)value;

- (int64_t)primitiveFoodIdValue;
- (void)setPrimitiveFoodIdValue:(int64_t)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSDate*)primitiveUpdateDate;
- (void)setPrimitiveUpdateDate:(NSDate*)value;

- (HANFoodAmount*)primitiveAvailableAmount;
- (void)setPrimitiveAvailableAmount:(HANFoodAmount*)value;

- (HANFoodType*)primitiveType;
- (void)setPrimitiveType:(HANFoodType*)value;

@end
