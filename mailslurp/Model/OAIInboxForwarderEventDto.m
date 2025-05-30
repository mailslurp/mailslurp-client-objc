#import "OAIInboxForwarderEventDto.h"

@implementation OAIInboxForwarderEventDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"inboxId": @"inboxId", @"emailId": @"emailId", @"sentId": @"sentId", @"userId": @"userId", @"forwarderId": @"forwarderId", @"message": @"message", @"status": @"status", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"inboxId", @"emailId", @"sentId", @"userId", @"forwarderId", @"message", @"status", ];
  return [optionalProperties containsObject:propertyName];
}

@end
