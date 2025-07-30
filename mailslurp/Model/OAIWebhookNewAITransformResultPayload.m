#import "OAIWebhookNewAITransformResultPayload.h"

@implementation OAIWebhookNewAITransformResultPayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageId": @"messageId", @"webhookId": @"webhookId", @"eventName": @"eventName", @"webhookName": @"webhookName", @"aiTransformResultId": @"aiTransformResultId", @"userId": @"userId", @"aiTransformId": @"aiTransformId", @"aiTransformMappingId": @"aiTransformMappingId", @"entityId": @"entityId", @"entityType": @"entityType", @"result": @"result" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"webhookName", @"aiTransformMappingId", @"entityId", @"entityType", @"result"];
  return [optionalProperties containsObject:propertyName];
}

@end
