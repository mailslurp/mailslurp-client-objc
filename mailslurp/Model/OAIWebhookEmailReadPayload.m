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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"emailId": @"emailId", @"emailIsRead": @"emailIsRead", @"eventName": @"eventName", @"inboxId": @"inboxId", @"messageId": @"messageId", @"webhookId": @"webhookId", @"webhookName": @"webhookName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"emailId", @"emailIsRead", @"eventName", @"inboxId", @"messageId", @"webhookId", @"webhookName"];
  return [optionalProperties containsObject:propertyName];
}

@end
