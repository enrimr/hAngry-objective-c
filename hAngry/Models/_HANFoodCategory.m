// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodCategory.m instead.

#import "_HANFoodCategory.h"

const struct HANFoodCategoryAttributes HANFoodCategoryAttributes = {
	.creationDate = @"creationDate",
	.foodCategoryId = @"foodCategoryId",
	.modificationDate = @"modificationDate",
	.name = @"name",
};

const struct HANFoodCategoryRelationships HANFoodCategoryRelationships = {
	.pyramCategory = @"pyramCategory",
	.types = @"types",
};

@implementation HANFoodCategoryID
@end

@implementation _HANFoodCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FoodCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FoodCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FoodCategory" inManagedObjectContext:moc_];
}

- (HANFoodCategoryID*)objectID {
	return (HANFoodCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"foodCategoryIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodCategoryId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic creationDate;

@dynamic foodCategoryId;

- (int64_t)foodCategoryIdValue {
	NSNumber *result = [self foodCategoryId];
	return [result longLongValue];
}

- (void)setFoodCategoryIdValue:(int64_t)value_ {
	[self setFoodCategoryId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodCategoryIdValue {
	NSNumber *result = [self primitiveFoodCategoryId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodCategoryIdValue:(int64_t)value_ {
	[self setPrimitiveFoodCategoryId:[NSNumber numberWithLongLong:value_]];
}

@dynamic modificationDate;

@dynamic name;

@dynamic pyramCategory;

@dynamic types;

- (NSMutableSet*)typesSet {
	[self willAccessValueForKey:@"types"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"types"];

	[self didAccessValueForKey:@"types"];
	return result;
}

@end

