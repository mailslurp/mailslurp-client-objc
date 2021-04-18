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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachmentCount": @"attachmentCount", @"bcc": @"bcc", @"bodyExcerpt": @"bodyExcerpt", @"cc": @"cc", @"createdAt": @"createdAt", @"from": @"from", @"_id": @"id", @"inboxIds": @"inboxIds", @"subject": @"subject", @"to": @"to", @"updatedAt": @"updatedAt", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bodyExcerpt", @"from", @"_id", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
