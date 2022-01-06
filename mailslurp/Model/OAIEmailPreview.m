#import "OAIEmailPreview.h"

@implementation OAIEmailPreview

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"subject": @"subject", @"to": @"to", @"from": @"from", @"bcc": @"bcc", @"cc": @"cc", @"createdAt": @"createdAt", @"read": @"read", @"attachments": @"attachments" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"subject", @"to", @"from", @"bcc", @"cc", @"createdAt", @"read", @"attachments"];
  return [optionalProperties containsObject:propertyName];
}

@end
