#import "OAIWebhookDto.h"

@implementation OAIWebhookDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"basicAuth": @"basicAuth", @"createdAt": @"createdAt", @"eventName": @"eventName", @"_id": @"id", @"inboxId": @"inboxId", @"method": @"method", @"name": @"name", @"payloadJsonSchema": @"payloadJsonSchema", @"updatedAt": @"updatedAt", @"url": @"url", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"basicAuth", @"createdAt", @"eventName", @"_id", @"inboxId", @"method", @"name", @"payloadJsonSchema", @"url", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
