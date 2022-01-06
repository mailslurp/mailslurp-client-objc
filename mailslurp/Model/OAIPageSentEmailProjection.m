#import "OAIPageSentEmailProjection.h"

@implementation OAIPageSentEmailProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"pageable": @"pageable", @"size": @"size", @"number": @"number", @"totalPages": @"totalPages", @"numberOfElements": @"numberOfElements", @"totalElements": @"totalElements", @"last": @"last", @"sort": @"sort", @"first": @"first", @"empty": @"empty" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"pageable", @"size", @"number", @"totalPages", @"numberOfElements", @"totalElements", @"last", @"sort", @"first", @"empty"];
  return [optionalProperties containsObject:propertyName];
}

@end
