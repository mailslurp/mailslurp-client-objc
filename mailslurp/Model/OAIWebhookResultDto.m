#import "OAIWebhookResultDto.h"

@implementation OAIWebhookResultDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"webhookId": @"webhookId", @"webhookUrl": @"webhookUrl", @"messageId": @"messageId", @"redriveId": @"redriveId", @"httpMethod": @"httpMethod", @"webhookEvent": @"webhookEvent", @"responseStatus": @"responseStatus", @"responseTimeMillis": @"responseTimeMillis", @"responseBodyExtract": @"responseBodyExtract", @"resultType": @"resultType", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"seen": @"seen", @"inboxId": @"inboxId", @"emailId": @"emailId", @"attachmentId": @"attachmentId", @"phoneId": @"phoneId", @"smsId": @"smsId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"redriveId", @"responseStatus", @"responseBodyExtract", @"resultType", @"inboxId", @"emailId", @"attachmentId", @"phoneId", @"smsId"];
  return [optionalProperties containsObject:propertyName];
}

@end
