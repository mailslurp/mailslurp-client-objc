#import "OAIInboxProjection.h"

@implementation OAIInboxProjection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"createdAt", @"emailAddress": @"emailAddress", @"favourite": @"favourite", @"_id": @"id", @"inboxType": @"inboxType", @"name": @"name", @"tags": @"tags", @"teamAccess": @"teamAccess" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailAddress", @"inboxType", @"name", @"tags", ];
  return [optionalProperties containsObject:propertyName];
}

@end
