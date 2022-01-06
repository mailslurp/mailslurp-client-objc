#import "OAISentEmailProjection.h"

@implementation OAISentEmailProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"from": @"from", @"userId": @"userId", @"subject": @"subject", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"to": @"to", @"attachments": @"attachments", @"bcc": @"bcc", @"cc": @"cc", @"bodyMD5Hash": @"bodyMD5Hash" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"subject", @"bodyMD5Hash"];
  return [optionalProperties containsObject:propertyName];
}

@end
