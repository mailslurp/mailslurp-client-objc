#import "OAIImapMailboxStatus.h"

@implementation OAIImapMailboxStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_readOnly": @"readOnly", @"items": @"items", @"flags": @"flags", @"permanentFlags": @"permanentFlags", @"unseenSeqNum": @"unseenSeqNum", @"messages": @"messages", @"recent": @"recent", @"unseen": @"unseen", @"uidNext": @"uidNext", @"uidValidity": @"uidValidity", @"appendLimit": @"appendLimit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"appendLimit"];
  return [optionalProperties containsObject:propertyName];
}

@end
