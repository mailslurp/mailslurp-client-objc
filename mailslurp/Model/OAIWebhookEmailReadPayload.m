#import "OAIWebhookEmailReadPayload.h"

@implementation OAIWebhookEmailReadPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"eventName": @"eventName", @"webhookName": @"webhookName", @"emailId": @"emailId", @"inboxId": @"inboxId", @"emailIsRead": @"emailIsRead", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"messageId", @"webhookId", @"eventName", @"webhookName", @"emailId", @"inboxId", @"emailIsRead", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
