#import "OAIWebhookBouncePayload.h"

@implementation OAIWebhookBouncePayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"eventName": @"eventName", @"webhookName": @"webhookName", @"bounceId": @"bounceId", @"sentToRecipients": @"sentToRecipients", @"sender": @"sender", @"bounceRecipients": @"bounceRecipients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"webhookName", @"sentToRecipients", @"bounceRecipients"];
  return [optionalProperties containsObject:propertyName];
}

@end
