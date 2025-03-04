#import "OAIFakeEmailDto.h"

@implementation OAIFakeEmailDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"emailAddress": @"emailAddress", @"sender": @"sender", @"recipients": @"recipients", @"attachmentNames": @"attachmentNames", @"subject": @"subject", @"preview": @"preview", @"body": @"body", @"seen": @"seen", @"createdAt": @"createdAt", @"contentType": @"contentType", @"bodyUrl": @"bodyUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sender", @"recipients", @"subject", @"preview", ];
  return [optionalProperties containsObject:propertyName];
}

@end
