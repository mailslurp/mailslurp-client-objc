#import "OAISentSmsProjection.h"

@implementation OAISentSmsProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"body": @"body", @"userId": @"userId", @"createdAt": @"createdAt", @"phoneNumber": @"phoneNumber", @"fromNumber": @"fromNumber", @"toNumber": @"toNumber", @"replyToId": @"replyToId", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"replyToId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
