#import "OAIAttachmentEntity.h"

@implementation OAIAttachmentEntity

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachmentId": @"attachmentId", @"contentLength": @"contentLength", @"contentType": @"contentType", @"createdAt": @"createdAt", @"_id": @"id", @"name": @"name", @"updatedAt": @"updatedAt", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contentLength", @"contentType", @"_id", @"name", ];
  return [optionalProperties containsObject:propertyName];
}

@end
