#import "OAIAliasProjection.h"

@implementation OAIAliasProjection

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_id": @"id", @"updatedAt": @"updatedAt", @"userId": @"userId", @"emailAddress": @"emailAddress", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"useThreads": @"useThreads" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_id", @"updatedAt", @"userId", @"emailAddress", @"inboxId", @"createdAt", @"useThreads"];
  return [optionalProperties containsObject:propertyName];
}

@end
