#import "OAIConnectorSyncRequestResultExceptionCauseStackTrace.h"

@implementation OAIConnectorSyncRequestResultExceptionCauseStackTrace

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"classLoaderName": @"classLoaderName", @"moduleName": @"moduleName", @"moduleVersion": @"moduleVersion", @"methodName": @"methodName", @"fileName": @"fileName", @"lineNumber": @"lineNumber", @"className": @"className", @"nativeMethod": @"nativeMethod" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"classLoaderName", @"moduleName", @"moduleVersion", @"methodName", @"fileName", @"lineNumber", @"className", @"nativeMethod"];
  return [optionalProperties containsObject:propertyName];
}

@end
