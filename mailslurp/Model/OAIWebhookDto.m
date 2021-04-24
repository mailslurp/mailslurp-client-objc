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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"basicAuth": @"basicAuth", @"createdAt": @"createdAt", @"_id": @"id", @"inboxId": @"inboxId", @"method": @"method", @"name": @"name", @"payloadJsonSchema": @"payloadJsonSchema", @"updatedAt": @"updatedAt", @"url": @"url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"basicAuth", @"createdAt", @"_id", @"inboxId", @"method", @"name", @"payloadJsonSchema", @"url"];
  return [optionalProperties containsObject:propertyName];
}

@end
