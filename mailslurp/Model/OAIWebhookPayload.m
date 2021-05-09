#import "OAIWebhookPayload.h"

@implementation OAIWebhookPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachmentMetaDatas": @"attachmentMetaDatas", @"bcc": @"bcc", @"cc": @"cc", @"createdAt": @"createdAt", @"emailId": @"emailId", @"eventName": @"eventName", @"from": @"from", @"inboxId": @"inboxId", @"messageId": @"messageId", @"subject": @"subject", @"to": @"to", @"webhookId": @"webhookId", @"webhookName": @"webhookName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachmentMetaDatas", @"bcc", @"cc", @"createdAt", @"emailId", @"eventName", @"from", @"inboxId", @"messageId", @"subject", @"to", @"webhookId", @"webhookName"];
  return [optionalProperties containsObject:propertyName];
}

@end
