#import "OAIInboxDto.h"

@implementation OAIInboxDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"createdAt": @"createdAt", @"name": @"name", @"_description": @"description", @"emailAddress": @"emailAddress", @"expiresAt": @"expiresAt", @"favourite": @"favourite", @"tags": @"tags", @"inboxType": @"inboxType", @"_readOnly": @"readOnly" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userId", @"name", @"_description", @"expiresAt", @"tags", @"inboxType", ];
  return [optionalProperties containsObject:propertyName];
}

@end
