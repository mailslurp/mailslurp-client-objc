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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_id": @"id", @"inboxId": @"inboxId", @"emailAddress": @"emailAddress", @"userId": @"userId", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"useThreads": @"useThreads" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"useThreads"];
  return [optionalProperties containsObject:propertyName];
}

@end
