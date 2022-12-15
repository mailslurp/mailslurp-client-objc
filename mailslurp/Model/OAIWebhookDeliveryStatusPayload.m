#import "OAIWebhookDeliveryStatusPayload.h"

@implementation OAIWebhookDeliveryStatusPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"eventName": @"eventName", @"webhookName": @"webhookName", @"_id": @"id", @"userId": @"userId", @"sentId": @"sentId", @"remoteMtaIp": @"remoteMtaIp", @"inboxId": @"inboxId", @"reportingMta": @"reportingMta", @"recipients": @"recipients", @"smtpResponse": @"smtpResponse", @"smtpStatusCode": @"smtpStatusCode", @"processingTimeMillis": @"processingTimeMillis", @"received": @"received", @"subject": @"subject" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"webhookName", @"sentId", @"remoteMtaIp", @"inboxId", @"reportingMta", @"recipients", @"smtpResponse", @"smtpStatusCode", @"processingTimeMillis", @"received", @"subject"];
  return [optionalProperties containsObject:propertyName];
}

@end
