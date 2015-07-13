// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodType.m instead.

#import "_HANFoodType.h"

const struct HANFoodTypeAttributes HANFoodTypeAttributes = {
	.creationDate = @"creationDate",
	.foodTypeId = @"foodTypeId",
	.modificationDate = @"modificationDate",
	.name = @"name",
};

const struct HANFoodTypeRelationships HANFoodTypeRelationships = {
	.category = @"category",
	.food = @"food",
};

@implementation HANFoodTypeID
@end

@implementation _HANFoodType

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FoodType" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FoodType";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FoodType" inManagedObjectContext:moc_];
}

- (HANFoodTypeID*)objectID {
	return (HANFoodTypeID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"foodTypeIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodTypeId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic creationDate;

@dynamic foodTypeId;

- (int64_t)foodTypeIdValue {
	NSNumber *result = [self foodTypeId];
	return [result longLongValue];
}

- (void)setFoodTypeIdValue:(int64_t)value_ {
	[self setFoodTypeId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodTypeIdValue {
	NSNumber *result = [self primitiveFoodTypeId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodTypeIdValue:(int64_t)value_ {
	[self setPrimitiveFoodTypeId:[NSNumber numberWithLongLong:value_]];
}

@dynamic modificationDate;

@dynamic name;

@dynamic category;

@dynamic food;

@end

