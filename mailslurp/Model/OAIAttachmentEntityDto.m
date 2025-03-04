#import "OAIAttachmentEntityDto.h"

@implementation OAIAttachmentEntityDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"attachmentId": @"attachmentId", @"userId": @"userId", @"contentType": @"contentType", @"contentLength": @"contentLength", @"contentId": @"contentId", @"name": @"name", @"inboxId": @"inboxId", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contentType", @"contentLength", @"contentId", @"name", @"inboxId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
