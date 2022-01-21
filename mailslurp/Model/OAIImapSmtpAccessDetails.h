#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* MailSlurp API
* MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
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


@property(nonatomic) NSString* smtpServerHost;

@property(nonatomic) NSNumber* smtpServerPort;

@property(nonatomic) NSString* smtpUsername;

@property(nonatomic) NSString* smtpPassword;

@property(nonatomic) NSString* imapServerHost;

@property(nonatomic) NSNumber* imapServerPort;

@property(nonatomic) NSString* imapUsername;

@property(nonatomic) NSString* imapPassword;

@end