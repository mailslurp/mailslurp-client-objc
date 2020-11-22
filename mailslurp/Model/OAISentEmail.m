#import "OAISentEmail.h"

@implementation OAISentEmail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"bcc": @"bcc", @"bodyMD5Hash": @"bodyMD5Hash", @"bodyS3Key": @"bodyS3Key", @"cc": @"cc", @"charset": @"charset", @"createdAt": @"createdAt", @"from": @"from", @"_id": @"id", @"inboxId": @"inboxId", @"isHTML": @"isHTML", @"subject": @"subject", @"to": @"to", @"updatedAt": @"updatedAt", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"bcc", @"bodyMD5Hash", @"bodyS3Key", @"cc", @"charset", @"from", @"_id", @"isHTML", @"subject", @"to", ];
  return [optionalProperties containsObject:propertyName];
}

@end
