#import "OAIUserDto.h"

@implementation OAIUserDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"apiKey": @"apiKey", @"emailAddress": @"emailAddress", @"emailAddressMd5": @"emailAddressMd5", @"created": @"created", @"userType": @"userType", @"organization": @"organization", @"verified": @"verified", @"hasPassword": @"hasPassword", @"isFrozen": @"isFrozen", @"addNewContacts": @"addNewContacts", @"ssoProvider": @"ssoProvider", @"customerId": @"customerId", @"hasOnboarded": @"hasOnboarded", @"imapUsername": @"imapUsername", @"imapPassword": @"imapPassword", @"smtpUsername": @"smtpUsername", @"smtpPassword": @"smtpPassword" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"created", @"userType", @"organization", @"verified", @"addNewContacts", @"ssoProvider", @"customerId", @"hasOnboarded", @"imapUsername", @"imapPassword", @"smtpUsername", @"smtpPassword"];
  return [optionalProperties containsObject:propertyName];
}

@end
