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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"_id": @"id", @"bodyMD5Hash": @"bodyMD5Hash", @"userId": @"userId", @"from": @"from", @"subject": @"subject", @"inboxId": @"inboxId", @"attachments": @"attachments", @"to": @"to", @"bcc": @"bcc", @"cc": @"cc", @"virtualSend": @"virtualSend" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bodyMD5Hash", @"from", @"subject", ];
  return [optionalProperties containsObject:propertyName];
}

@end
