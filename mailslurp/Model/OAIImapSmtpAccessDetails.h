#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
*
* The version of the OpenAPI document: 6.5.2
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIImapSmtpAccessDetails
@end

@interface OAIImapSmtpAccessDetails : OAIObject

/* Secure TLS SMTP server host domain 
 */
@property(nonatomic) NSString* secureSmtpServerHost;
/* Secure TLS SMTP server host port 
 */
@property(nonatomic) NSNumber* secureSmtpServerPort;
/* Secure TLS SMTP username for login 
 */
@property(nonatomic) NSString* secureSmtpUsername;
/* Secure TLS SMTP password for login 
 */
@property(nonatomic) NSString* secureSmtpPassword;
/* SMTP server host domain 
 */
@property(nonatomic) NSString* smtpServerHost;
/* SMTP server host port 
 */
@property(nonatomic) NSNumber* smtpServerPort;
/* SMTP username for login 
 */
@property(nonatomic) NSString* smtpUsername;
/* SMTP password for login 
 */
@property(nonatomic) NSString* smtpPassword;
/* IMAP server host domain 
 */
@property(nonatomic) NSString* imapServerHost;
/* IMAP server host port 
 */
@property(nonatomic) NSNumber* imapServerPort;
/* IMAP username for login 
 */
@property(nonatomic) NSString* imapUsername;
/* IMAP password for login 
 */
@property(nonatomic) NSString* imapPassword;
/* Mail from domain or SMTP HELO value [optional]
 */
@property(nonatomic) NSString* mailFromDomain;

@end
