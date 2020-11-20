#import "OAISentEmailDto.h"

@implementation OAISentEmailDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"bcc": @"bcc", @"body": @"body", @"bodyMD5Hash": @"bodyMD5Hash", @"cc": @"cc", @"charset": @"charset", @"from": @"from", @"_id": @"id", @"inboxId": @"inboxId", @"isHTML": @"isHTML", @"sentAt": @"sentAt", @"subject": @"subject", @"to": @"to", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"bcc", @"body", @"bodyMD5Hash", @"cc", @"charset", @"from", @"isHTML", @"subject", @"to", ];
  return [optionalProperties containsObject:propertyName];
}

@end
