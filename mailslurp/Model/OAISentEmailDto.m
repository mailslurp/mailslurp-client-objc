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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"inboxId": @"inboxId", @"to": @"to", @"from": @"from", @"replyTo": @"replyTo", @"cc": @"cc", @"bcc": @"bcc", @"attachments": @"attachments", @"subject": @"subject", @"bodyMD5Hash": @"bodyMD5Hash", @"body": @"body", @"charset": @"charset", @"isHTML": @"isHTML", @"sentAt": @"sentAt", @"pixelIds": @"pixelIds" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"to", @"from", @"replyTo", @"cc", @"bcc", @"attachments", @"subject", @"bodyMD5Hash", @"body", @"charset", @"isHTML", @"pixelIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
