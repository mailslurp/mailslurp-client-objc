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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"from": @"from", @"userId": @"userId", @"subject": @"subject", @"bodyMD5Hash": @"bodyMD5Hash", @"inboxId": @"inboxId", @"to": @"to", @"attachments": @"attachments", @"bcc": @"bcc", @"cc": @"cc", @"createdAt": @"createdAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"from", @"userId", @"subject", @"bodyMD5Hash", @"inboxId", @"to", @"attachments", @"bcc", @"cc", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
