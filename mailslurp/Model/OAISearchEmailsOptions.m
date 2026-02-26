#import "OAISearchEmailsOptions.h"

@implementation OAISearchEmailsOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inboxIds": @"inboxIds", @"pageIndex": @"pageIndex", @"pageSize": @"pageSize", @"sortDirection": @"sortDirection", @"unreadOnly": @"unreadOnly", @"searchFilter": @"searchFilter", @"since": @"since", @"before": @"before" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inboxIds", @"pageIndex", @"pageSize", @"sortDirection", @"unreadOnly", @"searchFilter", @"since", @"before"];
  return [optionalProperties containsObject:propertyName];
}

@end
