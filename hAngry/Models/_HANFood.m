// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFood.m instead.

#import "_HANFood.h"

const struct HANFoodAttributes HANFoodAttributes = {
	.creationDate = @"creationDate",
	.foodId = @"foodId",
	.name = @"name",
	.updateDate = @"updateDate",
};

const struct HANFoodRelationships HANFoodRelationships = {
	.availableAmount = @"availableAmount",
	.type = @"type",
};

@implementation HANFoodID
@end

@implementation _HANFood

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Food" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Food";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Food" inManagedObjectContext:moc_];
}

- (HANFoodID*)objectID {
	return (HANFoodID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"foodIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic creationDate;

@dynamic foodId;

- (int64_t)foodIdValue {
	NSNumber *result = [self foodId];
	return [result longLongValue];
}

- (void)setFoodIdValue:(int64_t)value_ {
	[self setFoodId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodIdValue {
	NSNumber *result = [self primitiveFoodId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodIdValue:(int64_t)value_ {
	[self setPrimitiveFoodId:[NSNumber numberWithLongLong:value_]];
}

@dynamic name;

@dynamic updateDate;

@dynamic availableAmount;

@dynamic type;

@end

