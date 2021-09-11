#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIMatchOption.h"
@protocol OAIMatchOption;
@class OAIMatchOption;



@protocol OAIWaitForConditions
@end

@interface OAIWaitForConditions : OAIObject

/* ISO Date Time latest time of email to consider. Filter for matching emails that were received before this date [optional]
 */
@property(nonatomic) NSDate* before;
/* Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. [optional]
 */
@property(nonatomic) NSNumber* count;
/* How should the found count be compared to the expected count. [optional]
 */
@property(nonatomic) NSString* countType;
/* Max time in milliseconds to wait between retries if a `timeout` is specified. [optional]
 */
@property(nonatomic) NSNumber* delayTimeout;
/* ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count. 
 */
@property(nonatomic) NSString* inboxId;
/* Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for. [optional]
 */
@property(nonatomic) NSArray<OAIMatchOption>* matches;
/* ISO Date Time earliest time of email to consider. Filter for matching emails that were received after this date [optional]
 */
@property(nonatomic) NSDate* since;
/* Direction to sort matching emails by created time [optional]
 */
@property(nonatomic) NSString* sortDirection;
/* Max time in milliseconds to retry the `waitFor` operation until conditions are met. 
 */
@property(nonatomic) NSNumber* timeout;
/* Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard. [optional]
 */
@property(nonatomic) NSNumber* unreadOnly;

@end
