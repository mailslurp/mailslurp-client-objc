#import "OAIWebhookNewEmailPayload.h"

@implementation OAIWebhookNewEmailPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"eventName": @"eventName", @"webhookName": @"webhookName", @"inboxId": @"inboxId", @"domainId": @"domainId", @"emailId": @"emailId", @"createdAt": @"createdAt", @"to": @"to", @"from": @"from", @"cc": @"cc", @"bcc": @"bcc", @"subject": @"subject", @"attachmentMetaDatas": @"attachmentMetaDatas" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"webhookName", @"domainId", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
