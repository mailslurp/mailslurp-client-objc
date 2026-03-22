#import "OAIEmailAuditDto.h"

@implementation OAIEmailAuditDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"emailId": @"emailId", @"fromAddress": @"fromAddress", @"recipient": @"recipient", @"subject": @"subject", @"analysis": @"analysis", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailId", @"fromAddress", @"recipient", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
