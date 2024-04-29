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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"basicAuth": @"basicAuth", @"name": @"name", @"phoneId": @"phoneId", @"inboxId": @"inboxId", @"requestBodyTemplate": @"requestBodyTemplate", @"url": @"url", @"method": @"method", @"payloadJsonSchema": @"payloadJsonSchema", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"eventName": @"eventName", @"requestHeaders": @"requestHeaders", @"ignoreInsecureSslCertificates": @"ignoreInsecureSslCertificates", @"useStaticIpRange": @"useStaticIpRange" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"phoneId", @"inboxId", @"requestBodyTemplate", @"eventName", @"requestHeaders", @"ignoreInsecureSslCertificates", @"useStaticIpRange"];
  return [optionalProperties containsObject:propertyName];
}

@end
