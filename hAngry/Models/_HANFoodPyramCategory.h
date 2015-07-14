// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodPyramCategory.h instead.

#import <CoreData/CoreData.h>

extern const struct HANFoodPyramCategoryAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *foodPyramCategoryId;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} HANFoodPyramCategoryAttributes;

extern const struct HANFoodPyramCategoryRelationships {
	__unsafe_unretained NSString *categories;
} HANFoodPyramCategoryRelationships;

@class HANFoodCategory;

@interface HANFoodPyramCategoryID : NSManagedObjectID {}
@end

@interface _HANFoodPyramCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HANFoodPyramCategoryID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* foodPyramCategoryId;

@property (atomic) int64_t foodPyramCategoryIdValue;
- (int64_t)foodPyramCategoryIdValue;
- (void)setFoodPyramCategoryIdValue:(int64_t)value_;

//- (BOOL)validateFoodPyramCategoryId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *categories;

- (NSMutableSet*)categoriesSet;

@end

@interface _HANFoodPyramCategory (CategoriesCoreDataGeneratedAccessors)
- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(HANFoodCategory*)value_;
- (void)removeCategoriesObject:(HANFoodCategory*)value_;

@end

@interface _HANFoodPyramCategory (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSNumber*)primitiveFoodPyramCategoryId;
- (void)setPrimitiveFoodPyramCategoryId:(NSNumber*)value;

- (int64_t)primitiveFoodPyramCategoryIdValue;
- (void)setPrimitiveFoodPyramCategoryIdValue:(int64_t)value_;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;

@end
