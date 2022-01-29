#import "OAIPageInboxRulesetDto.h"

@implementation OAIPageInboxRulesetDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"pageable": @"pageable", @"total": @"total", @"last": @"last", @"totalElements": @"totalElements", @"totalPages": @"totalPages", @"size": @"size", @"number": @"number", @"sort": @"sort", @"first": @"first", @"numberOfElements": @"numberOfElements", @"empty": @"empty" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"pageable", @"total", @"last", @"totalElements", @"totalPages", @"size", @"number", @"sort", @"first", @"numberOfElements", @"empty"];
  return [optionalProperties containsObject:propertyName];
}

@end
