#import "OAIAliasDto.h"

@implementation OAIAliasDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"emailAddress": @"emailAddress", @"_id": @"id", @"inboxId": @"inboxId", @"isVerified": @"isVerified", @"maskedEmailAddress": @"maskedEmailAddress", @"name": @"name", @"updatedAt": @"updatedAt", @"useThreads": @"useThreads", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"emailAddress", @"inboxId", @"isVerified", @"maskedEmailAddress", @"name", @"updatedAt", @"useThreads", ];
  return [optionalProperties containsObject:propertyName];
}

@end
