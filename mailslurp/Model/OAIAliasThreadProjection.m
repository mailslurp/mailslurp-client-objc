#import "OAIAliasThreadProjection.h"

@implementation OAIAliasThreadProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"userId", @"inboxId": @"inboxId", @"updatedAt": @"updatedAt", @"createdAt": @"createdAt", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"aliasId": @"aliasId", @"subject": @"subject", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cc", @"bcc", @"subject", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
