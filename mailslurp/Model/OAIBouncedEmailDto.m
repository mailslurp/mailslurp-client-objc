#import "OAIBouncedEmailDto.h"

@implementation OAIBouncedEmailDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bounceMta": @"bounceMta", @"bounceRecipients": @"bounceRecipients", @"bounceSubType": @"bounceSubType", @"bounceType": @"bounceType", @"createdAt": @"createdAt", @"_id": @"id", @"notificationType": @"notificationType", @"sender": @"sender", @"sentToRecipients": @"sentToRecipients", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bounceMta", @"bounceRecipients", @"bounceSubType", @"bounceType", @"_id", @"sentToRecipients", ];
  return [optionalProperties containsObject:propertyName];
}

@end
