#import "OAIPagePhoneNumberProjection.h"

@implementation OAIPagePhoneNumberProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"pageable": @"pageable", @"total": @"total", @"totalElements": @"totalElements", @"totalPages": @"totalPages", @"last": @"last", @"size": @"size", @"number": @"number", @"sort": @"sort", @"numberOfElements": @"numberOfElements", @"first": @"first", @"empty": @"empty" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"pageable", @"total", @"totalElements", @"totalPages", @"last", @"size", @"number", @"sort", @"numberOfElements", @"first", @"empty"];
  return [optionalProperties containsObject:propertyName];
}

@end
