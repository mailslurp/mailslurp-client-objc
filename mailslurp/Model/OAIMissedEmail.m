#import "OAIMissedEmail.h"

@implementation OAIMissedEmail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"subject": @"subject", @"bodyExcerpt": @"bodyExcerpt", @"attachmentCount": @"attachmentCount", @"from": @"from", @"to": @"to", @"cc": @"cc", @"bcc": @"bcc", @"inboxIds": @"inboxIds", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"subject", @"bodyExcerpt", @"attachmentCount", @"from", @"to", @"cc", @"bcc", @"inboxIds", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
