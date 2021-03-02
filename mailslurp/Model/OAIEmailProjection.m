#import "OAIEmailProjection.h"

@implementation OAIEmailProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"bcc": @"bcc", @"bodyMD5Hash": @"bodyMD5Hash", @"cc": @"cc", @"createdAt": @"createdAt", @"from": @"from", @"_id": @"id", @"inboxId": @"inboxId", @"read": @"read", @"subject": @"subject", @"to": @"to" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"bcc", @"bodyMD5Hash", @"cc", @"from", @"read", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
