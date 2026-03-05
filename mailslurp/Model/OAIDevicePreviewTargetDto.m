#import "OAIDevicePreviewTargetDto.h"

@implementation OAIDevicePreviewTargetDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"runId": @"runId", @"provider": @"provider", @"clientProfile": @"clientProfile", @"deviceType": @"deviceType", @"browserFamily": @"browserFamily", @"platform": @"platform", @"colorScheme": @"colorScheme", @"status": @"status", @"failureCode": @"failureCode", @"primaryScreenshotId": @"primaryScreenshotId", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"provider", @"clientProfile", @"deviceType", @"browserFamily", @"platform", @"colorScheme", @"status", @"failureCode", @"primaryScreenshotId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
