#import "OAIEmailThreadDto.h"

@implementation OAIEmailThreadDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"inboxId": @"inboxId", @"from": @"from", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"sender": @"sender", @"recipients": @"recipients", @"subject": @"subject", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"from", @"cc", @"bcc", @"sender", @"recipients", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
