#import "OAIForwardEmailOptions.h"

@implementation OAIForwardEmailOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bcc": @"bcc", @"cc": @"cc", @"from": @"from", @"subject": @"subject", @"to": @"to", @"useInboxName": @"useInboxName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bcc", @"cc", @"from", @"subject", @"to", @"useInboxName"];
  return [optionalProperties containsObject:propertyName];
}

@end
