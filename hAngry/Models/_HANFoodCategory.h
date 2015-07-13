// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodCategory.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodCategoryAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodCategoryId;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} HANFoodCategoryAttributes;

extern const struct HANFoodCategoryRelationships {
	__unsafe_unretained NSString *pyramCategory;
	__unsafe_unretained NSString *type;
} HANFoodCategoryRelationships;

@class HANFoodPyramCategory;
@class HANFoodType;

@interface HANFoodCategoryID : NSManagedObjectID {}
@end

@interface _HANFoodCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodCategoryID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodCategoryId;

@property (atomic) int64_t foodCategoryIdValue;
- (int64_t)foodCategoryIdValue;
- (void)setFoodCategoryIdValue:(int64_t)value_;

//- (BOOL)validateFoodCategoryId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodPyramCategory *pyramCategory;

//- (BOOL)validatePyramCategory:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) HANFoodType *type;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;

@end

@interface _HANFoodCategory (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodCategoryId;
- (void)setPrimitiveFoodCategoryId:(NSNumber*)value;

- (int64_t)primitiveFoodCategoryIdValue;
- (void)setPrimitiveFoodCategoryIdValue:(int64_t)value_;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (HANFoodPyramCategory*)primitivePyramCategory;
- (void)setPrimitivePyramCategory:(HANFoodPyramCategory*)value;

- (HANFoodType*)primitiveType;
- (void)setPrimitiveType:(HANFoodType*)value;

@end
