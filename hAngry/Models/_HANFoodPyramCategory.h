// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodPyramCategory.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodPyramCategoryAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodPyramId;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} HANFoodPyramCategoryAttributes;

extern const struct HANFoodPyramCategoryRelationships {
	__unsafe_unretained NSString *types;
} HANFoodPyramCategoryRelationships;

@class HANFoodType;

@interface HANFoodPyramCategoryID : NSManagedObjectID {}
@end

@interface _HANFoodPyramCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodPyramCategoryID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodPyramId;

@property (atomic) int64_t foodPyramIdValue;
- (int64_t)foodPyramIdValue;
- (void)setFoodPyramIdValue:(int64_t)value_;

//- (BOOL)validateFoodPyramId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodType *types;

//- (BOOL)validateTypes:(id*)value_ error:(NSError**)error_;

@end

@interface _HANFoodPyramCategory (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodPyramId;
- (void)setPrimitiveFoodPyramId:(NSNumber*)value;

- (int64_t)primitiveFoodPyramIdValue;
- (void)setPrimitiveFoodPyramIdValue:(int64_t)value_;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (HANFoodType*)primitiveTypes;
- (void)setPrimitiveTypes:(HANFoodType*)value;

@end
