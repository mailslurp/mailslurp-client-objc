#import "OAIEmail.h"

@implementation OAIEmail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"analysis": @"analysis", @"attachments": @"attachments", @"bcc": @"bcc", @"body": @"body", @"bodyMD5Hash": @"bodyMD5Hash", @"cc": @"cc", @"charset": @"charset", @"createdAt": @"createdAt", @"from": @"from", @"headers": @"headers", @"_id": @"id", @"inboxId": @"inboxId", @"isHTML": @"isHTML", @"read": @"read", @"subject": @"subject", @"to": @"to", @"updatedAt": @"updatedAt", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"analysis", @"attachments", @"bcc", @"body", @"bodyMD5Hash", @"cc", @"charset", @"createdAt", @"from", @"headers", @"_id", @"inboxId", @"isHTML", @"read", @"subject", @"to", @"updatedAt", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
