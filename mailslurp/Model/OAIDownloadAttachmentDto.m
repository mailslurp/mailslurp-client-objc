#import "OAIDownloadAttachmentDto.h"

@implementation OAIDownloadAttachmentDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"base64FileContents": @"base64FileContents", @"contentType": @"contentType", @"sizeBytes": @"sizeBytes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"base64FileContents", @"contentType", @"sizeBytes"];
  return [optionalProperties containsObject:propertyName];
}

@end
