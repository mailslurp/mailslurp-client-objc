#import "OAIPageSentEmailWithQueueProjection.h"

@implementation OAIPageSentEmailWithQueueProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"pageable": @"pageable", @"total": @"total", @"numberOfElements": @"numberOfElements", @"totalElements": @"totalElements", @"totalPages": @"totalPages", @"size": @"size", @"number": @"number", @"last": @"last", @"first": @"first", @"sort": @"sort", @"empty": @"empty" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pageable", @"total", @"last", @"first", @"sort", @"empty"];
  return [optionalProperties containsObject:propertyName];
}

@end
