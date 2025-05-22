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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"url": @"url", @"password": @"password", @"username": @"username", @"userId": @"userId", @"inboxId": @"inboxId", @"eventName": @"eventName", @"updatedAt": @"updatedAt", @"createdAt": @"createdAt", @"healthStatus": @"healthStatus", @"phoneNumberId": @"phoneNumberId", @"name": @"name", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"password", @"username", @"inboxId", @"eventName", @"healthStatus", @"phoneNumberId", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
