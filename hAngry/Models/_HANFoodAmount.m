// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to HANFoodAmount.m instead.

#import "_HANFoodAmount.h"

const struct HANFoodAmountAttributes HANFoodAmountAttributes = {
	.amount = @"amount",
	.creationDate = @"creationDate",
	.expirationDate = @"expirationDate",
	.foodAmountId = @"foodAmountId",
	.measureUnit = @"measureUnit",
	.price = @"price",
	.updateDate = @"updateDate",
};

const struct HANFoodAmountRelationships HANFoodAmountRelationships = {
	.bought = @"bought",
};

@implementation HANFoodAmountID
@end

@implementation _HANFoodAmount

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FoodAmount" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FoodAmount";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FoodAmount" inManagedObjectContext:moc_];
}

- (HANFoodAmountID*)objectID {
	return (HANFoodAmountID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"amountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"amount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"foodAmountIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"foodAmountId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"priceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"price"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic amount;

- (float)amountValue {
	NSNumber *result = [self amount];
	return [result floatValue];
}

- (void)setAmountValue:(float)value_ {
	[self setAmount:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveAmountValue {
	NSNumber *result = [self primitiveAmount];
	return [result floatValue];
}

- (void)setPrimitiveAmountValue:(float)value_ {
	[self setPrimitiveAmount:[NSNumber numberWithFloat:value_]];
}

@dynamic creationDate;

@dynamic expirationDate;

@dynamic foodAmountId;

- (int64_t)foodAmountIdValue {
	NSNumber *result = [self foodAmountId];
	return [result longLongValue];
}

- (void)setFoodAmountIdValue:(int64_t)value_ {
	[self setFoodAmountId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFoodAmountIdValue {
	NSNumber *result = [self primitiveFoodAmountId];
	return [result longLongValue];
}

- (void)setPrimitiveFoodAmountIdValue:(int64_t)value_ {
	[self setPrimitiveFoodAmountId:[NSNumber numberWithLongLong:value_]];
}

@dynamic measureUnit;

@dynamic price;

- (float)priceValue {
	NSNumber *result = [self price];
	return [result floatValue];
}

- (void)setPriceValue:(float)value_ {
	[self setPrice:[NSNumber numberWithFloat:value_]];
}

- (float)primitivePriceValue {
	NSNumber *result = [self primitivePrice];
	return [result floatValue];
}

- (void)setPrimitivePriceValue:(float)value_ {
	[self setPrimitivePrice:[NSNumber numberWithFloat:value_]];
}

@dynamic updateDate;

@dynamic bought;

@end

