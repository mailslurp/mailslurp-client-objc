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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"emailAddress": @"emailAddress", @"maskedEmailAddress": @"maskedEmailAddress", @"userId": @"userId", @"inboxId": @"inboxId", @"name": @"name", @"useThreads": @"useThreads", @"isVerified": @"isVerified", @"domainId": @"domainId", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"maskedEmailAddress", @"name", @"useThreads", @"domainId", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
