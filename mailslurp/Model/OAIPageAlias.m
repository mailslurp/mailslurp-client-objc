#import "OAIPageAlias.h"

@implementation OAIPageAlias

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"empty": @"empty", @"first": @"first", @"last": @"last", @"number": @"number", @"numberOfElements": @"numberOfElements", @"pageable": @"pageable", @"size": @"size", @"sort": @"sort", @"totalElements": @"totalElements", @"totalPages": @"totalPages" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"empty", @"first", @"last", @"number", @"numberOfElements", @"pageable", @"size", @"sort", @"totalElements", @"totalPages"];
  return [optionalProperties containsObject:propertyName];
}

@end
