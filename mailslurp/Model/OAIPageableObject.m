#import "OAIPageableObject.h"

@implementation OAIPageableObject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"pageSize": @"pageSize", @"paged": @"paged", @"pageNumber": @"pageNumber", @"sort": @"sort", @"unpaged": @"unpaged", @"offset": @"offset" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pageSize", @"paged", @"pageNumber", @"sort", @"unpaged", @"offset"];
  return [optionalProperties containsObject:propertyName];
}

@end
