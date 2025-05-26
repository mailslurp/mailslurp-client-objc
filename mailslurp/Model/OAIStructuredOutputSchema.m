#import "OAIStructuredOutputSchema.h"

@implementation OAIStructuredOutputSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anyOf": @"anyOf", @"_default": @"default", @"_description": @"description", @"_enum": @"enum", @"example": @"example", @"format": @"format", @"items": @"items", @"maxItems": @"maxItems", @"minItems": @"minItems", @"maxLength": @"maxLength", @"minLength": @"minLength", @"pattern": @"pattern", @"properties": @"properties", @"propertyOrdering": @"propertyOrdering", @"required": @"required", @"maxProperties": @"maxProperties", @"minProperties": @"minProperties", @"maximum": @"maximum", @"minimum": @"minimum", @"nullable": @"nullable", @"title": @"title", @"type": @"type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anyOf", @"_default", @"_description", @"_enum", @"example", @"format", @"items", @"maxItems", @"minItems", @"maxLength", @"minLength", @"pattern", @"properties", @"propertyOrdering", @"required", @"maxProperties", @"minProperties", @"maximum", @"minimum", @"nullable", @"title", @"type"];
  return [optionalProperties containsObject:propertyName];
}

@end
