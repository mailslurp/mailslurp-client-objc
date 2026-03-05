#import "OAIDevicePreviewScreenshotDto.h"

@implementation OAIDevicePreviewScreenshotDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"screenshotId": @"screenshotId", @"runId": @"runId", @"targetId": @"targetId", @"variant": @"variant", @"title": @"title", @"_description": @"description", @"isPrimary": @"isPrimary", @"displayOrder": @"displayOrder", @"storageKey": @"storageKey", @"accessUrl": @"accessUrl", @"liveViewUrl": @"liveViewUrl", @"sessionId": @"sessionId", @"browserContextId": @"browserContextId", @"deepLinkUrl": @"deepLinkUrl", @"width": @"width", @"height": @"height", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"targetId", @"variant", @"title", @"_description", @"storageKey", @"accessUrl", @"liveViewUrl", @"sessionId", @"browserContextId", @"deepLinkUrl", @"width", @"height", ];
  return [optionalProperties containsObject:propertyName];
}

@end
