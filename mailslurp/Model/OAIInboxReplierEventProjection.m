#import "OAIInboxReplierEventProjection.h"

@implementation OAIInboxReplierEventProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"recipients": @"recipients", @"userId": @"userId", @"emailId": @"emailId", @"inboxId": @"inboxId", @"sentId": @"sentId", @"replierId": @"replierId", @"message": @"message", @"_id": @"id", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipients", @"userId", @"emailId", @"inboxId", @"sentId", @"replierId", @"message", @"_id", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
