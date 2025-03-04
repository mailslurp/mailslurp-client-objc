#import "OAIWebhookProjection.h"

@implementation OAIWebhookProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"url": @"url", @"userId": @"userId", @"inboxId": @"inboxId", @"eventName": @"eventName", @"healthStatus": @"healthStatus", @"phoneNumberId": @"phoneNumberId", @"name": @"name", @"_id": @"id", @"username": @"username", @"password": @"password" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"eventName", @"healthStatus", @"phoneNumberId", @"name", @"username", @"password"];
  return [optionalProperties containsObject:propertyName];
}

@end
