#import "OAIPageable.h"

@implementation OAIPageable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"offset": @"offset", @"sort": @"sort", @"pageNumber": @"pageNumber", @"pageSize": @"pageSize", @"paged": @"paged", @"unpaged": @"unpaged" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"offset", @"sort", @"pageNumber", @"pageSize", @"paged", @"unpaged"];
  return [optionalProperties containsObject:propertyName];
}

@end
