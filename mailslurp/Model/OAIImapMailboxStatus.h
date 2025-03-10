#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIImapMailboxStatus
@end

@interface OAIImapMailboxStatus : OAIObject

/* The mailbox name. 
 */
@property(nonatomic) NSString* name;
/* True if the mailbox is open in read-only mode. 
 */
@property(nonatomic) NSNumber* _readOnly;
/* Results map 
 */
@property(nonatomic) NSObject* items;
/* The mailbox flags. 
 */
@property(nonatomic) NSArray<NSString*>* flags;
/* The mailbox permanent flags. 
 */
@property(nonatomic) NSArray<NSString*>* permanentFlags;
/* The sequence number of the first unseen message in the mailbox. 
 */
@property(nonatomic) NSNumber* unseenSeqNum;
/* The number of messages in this mailbox. 
 */
@property(nonatomic) NSNumber* messages;
/* The number of messages not seen since the last time the mailbox was opened. 
 */
@property(nonatomic) NSNumber* recent;
/* The number of unread messages. 
 */
@property(nonatomic) NSNumber* unseen;
/* The next UID. 
 */
@property(nonatomic) NSNumber* uidNext;
/* Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. 
 */
@property(nonatomic) NSNumber* uidValidity;
/* Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension [optional]
 */
@property(nonatomic) NSNumber* appendLimit;

@end
