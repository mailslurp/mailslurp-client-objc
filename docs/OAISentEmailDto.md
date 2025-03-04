# OAISentEmailDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | ID of sent email | 
**userId** | **NSString*** | User ID | 
**inboxId** | **NSString*** | Inbox ID email was sent from | 
**domainId** | **NSString*** | Domain ID | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | Recipients email was sent to | [optional] 
**from** | **NSString*** | Sent from address | [optional] 
**sender** | [**OAISender***](OAISender) |  | [optional] 
**recipients** | [**OAIEmailRecipients***](OAIEmailRecipients) |  | [optional] 
**replyTo** | **NSString*** |  | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**attachments** | **NSArray&lt;NSString*&gt;*** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **NSString*** |  | [optional] 
**bodyMD5Hash** | **NSString*** | MD5 Hash | [optional] 
**body** | **NSString*** | Sent email body | [optional] 
**toContacts** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**toGroup** | **NSString*** |  | [optional] 
**charset** | **NSString*** |  | [optional] 
**isHTML** | **NSNumber*** |  | [optional] 
**sentAt** | **NSDate*** |  | 
**createdAt** | **NSDate*** |  | 
**pixelIds** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**messageId** | **NSString*** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**messageIds** | **NSArray&lt;NSString*&gt;*** |  | [optional] 
**virtualSend** | **NSNumber*** |  | [optional] 
**templateId** | **NSString*** |  | [optional] 
**templateVariables** | **NSDictionary&lt;NSString*, NSObject*&gt;*** |  | [optional] 
**headers** | **NSDictionary&lt;NSString*, NSString*&gt;*** |  | [optional] 
**threadId** | **NSString*** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**bodyExcerpt** | **NSString*** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**textExcerpt** | **NSString*** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**inReplyTo** | **NSString*** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**favourite** | **NSNumber*** | Is email favourited | [optional] 
**html** | **NSNumber*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


