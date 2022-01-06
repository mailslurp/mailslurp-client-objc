#import "OAIWebhookNewAttachmentPayload.h"

@implementation OAIWebhookNewAttachmentPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"webhookName": @"webhookName", @"eventName": @"eventName", @"attachmentId": @"attachmentId", @"name": @"name", @"contentType": @"contentType", @"contentLength": @"contentLength" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"messageId", @"webhookId", @"webhookName", @"eventName", @"attachmentId", @"name", @"contentType", @"contentLength"];
  return [optionalProperties containsObject:propertyName];
}

@end
