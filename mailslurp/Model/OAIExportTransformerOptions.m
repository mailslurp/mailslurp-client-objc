#import "OAIExportTransformerOptions.h"

@implementation OAIExportTransformerOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"aiTransformId": @"aiTransformId", @"aiMappingId": @"aiMappingId", @"flattenArrays": @"flattenArrays", @"since": @"since", @"before": @"before", @"format": @"format", @"inboxId": @"inboxId", @"phoneId": @"phoneId", @"emailId": @"emailId", @"smsId": @"smsId", @"attachmentId": @"attachmentId", @"includeMetaData": @"includeMetaData", @"delimiter": @"delimiter", @"arraySeparator": @"arraySeparator", @"includeMetaDataColumns": @"includeMetaDataColumns" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"aiTransformId", @"aiMappingId", @"since", @"before", @"inboxId", @"phoneId", @"emailId", @"smsId", @"attachmentId", @"delimiter", @"arraySeparator", @"includeMetaDataColumns"];
  return [optionalProperties containsObject:propertyName];
}

@end
