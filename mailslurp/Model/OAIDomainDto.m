#import "OAIDomainDto.h"

@implementation OAIDomainDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"dkimTokens": @"dkimTokens", @"domain": @"domain", @"_id": @"id", @"isVerified": @"isVerified", @"updatedAt": @"updatedAt", @"userId": @"userId", @"verificationToken": @"verificationToken" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dkimTokens", @"domain", @"isVerified", @"verificationToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
