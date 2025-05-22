#import "OAIAttachmentProjection.h"

@implementation OAIAttachmentProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userId": @"userId", @"inboxId": @"inboxId", @"updatedAt": @"updatedAt", @"createdAt": @"createdAt", @"contentId": @"contentId", @"attachmentId": @"attachmentId", @"name": @"name", @"_id": @"id", @"contentLength": @"contentLength", @"contentType": @"contentType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxId", @"contentId", @"name", @"contentLength", @"contentType"];
  return [optionalProperties containsObject:propertyName];
}

@end
