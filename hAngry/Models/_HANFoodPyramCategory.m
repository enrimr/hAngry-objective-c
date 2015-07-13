// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodPyramCategory.m instead.

#import "_HANFoodPyramCategory.h"

const struct HANFoodPyramCategoryAttributes HANFoodPyramCategoryAttributes = {
	.creationDate = @"creationDate",
	.foodPyramCategoryId = @"foodPyramCategoryId",
	.modificationDate = @"modificationDate",
	.name = @"name",
};

const struct HANFoodPyramCategoryRelationships HANFoodPyramCategoryRelationships = {
	.category = @"category",
};

@implementation HANFoodPyramCategoryID
@end

@implementation _HANFoodPyramCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FoodPyramCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FoodPyramCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FoodPyramCategory" inManagedObjectContext:moc_];
}

- (HANFoodPyramCategoryID*)objectID {
	return (HANFoodPyramCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"foodPyramCategoryIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodPyramCategoryId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic creationDate;

@dynamic foodPyramCategoryId;

- (int64_t)foodPyramCategoryIdValue {
	NSNumber *result = [self foodPyramCategoryId];
	return [result longLongValue];
}

- (void)setFoodPyramCategoryIdValue:(int64_t)value_ {
	[self setFoodPyramCategoryId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodPyramCategoryIdValue {
	NSNumber *result = [self primitiveFoodPyramCategoryId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodPyramCategoryIdValue:(int64_t)value_ {
	[self setPrimitiveFoodPyramCategoryId:[NSNumber numberWithLongLong:value_]];
}

@dynamic modificationDate;

@dynamic name;

@dynamic category;

@end

