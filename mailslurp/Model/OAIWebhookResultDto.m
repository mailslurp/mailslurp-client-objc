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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"httpMethod": @"httpMethod", @"_id": @"id", @"inboxId": @"inboxId", @"messageId": @"messageId", @"redriveId": @"redriveId", @"responseBodyExtract": @"responseBodyExtract", @"responseStatus": @"responseStatus", @"responseTimeMillis": @"responseTimeMillis", @"resultType": @"resultType", @"seen": @"seen", @"updatedAt": @"updatedAt", @"userId": @"userId", @"webhookEvent": @"webhookEvent", @"webhookId": @"webhookId", @"webhookUrl": @"webhookUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"redriveId", @"responseBodyExtract", @"responseStatus", @"resultType", @"seen", ];
  return [optionalProperties containsObject:propertyName];
}

@end
