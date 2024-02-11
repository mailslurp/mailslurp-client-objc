#import "OAISendWithQueueResult.h"

@implementation OAISendWithQueueResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"subject": @"subject", @"inboxId": @"inboxId", @"headerId": @"headerId", @"delivered": @"delivered", @"exceptionName": @"exceptionName", @"message": @"message", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"inboxId", @"exceptionName", @"message", ];
  return [optionalProperties containsObject:propertyName];
}

@end
