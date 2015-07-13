// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodPyramCategory.m instead.

#import "_HANFoodPyramCategory.h"

const struct HANFoodPyramCategoryAttributes HANFoodPyramCategoryAttributes = {
	.creationDate = @"creationDate",
	.foodPyramId = @"foodPyramId",
	.modificationDate = @"modificationDate",
	.name = @"name",
};

const struct HANFoodPyramCategoryRelationships HANFoodPyramCategoryRelationships = {
	.types = @"types",
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

	if ([key isEqualToString:@"foodPyramIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodPyramId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic creationDate;

@dynamic foodPyramId;

- (int64_t)foodPyramIdValue {
	NSNumber *result = [self foodPyramId];
	return [result longLongValue];
}

- (void)setFoodPyramIdValue:(int64_t)value_ {
	[self setFoodPyramId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodPyramIdValue {
	NSNumber *result = [self primitiveFoodPyramId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodPyramIdValue:(int64_t)value_ {
	[self setPrimitiveFoodPyramId:[NSNumber numberWithLongLong:value_]];
}

@dynamic modificationDate;

@dynamic name;

@dynamic types;

@end

