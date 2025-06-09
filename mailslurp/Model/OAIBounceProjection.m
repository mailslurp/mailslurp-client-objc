#import "OAIBounceProjection.h"

@implementation OAIBounceProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"subject": @"subject", @"sender": @"sender", @"createdAt": @"createdAt", @"bounceType": @"bounceType", @"bounceMta": @"bounceMta", @"_id": @"id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subject", @"bounceType", @"bounceMta", @"_id"];
  return [optionalProperties containsObject:propertyName];
}

@end
