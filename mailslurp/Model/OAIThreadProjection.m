#import "OAIThreadProjection.h"

@implementation OAIThreadProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"inboxId": @"inboxId", @"userId": @"userId", @"to": @"to", @"bcc": @"bcc", @"cc": @"cc", @"aliasId": @"aliasId", @"subject": @"subject", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bcc", @"cc", @"subject", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
