#import "OAIInboxForwarderEventProjection.h"

@implementation OAIInboxForwarderEventProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"message": @"message", @"_id": @"id", @"status": @"status", @"userId": @"userId", @"emailId": @"emailId", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"forwarderId": @"forwarderId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"message", @"_id", @"status", @"userId", @"emailId", @"inboxId", @"forwarderId"];
  return [optionalProperties containsObject:propertyName];
}

@end
