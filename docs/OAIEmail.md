# OAIEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**OAIEmailAnalysis***](OAIEmailAnalysis) |  | [optional] 
**attachments** | **NSArray&lt;NSString*&gt;*** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**body** | **NSString*** | The body of the email message | [optional] 
**bodyExcerpt** | **NSString*** | An excerpt of the body of the email message | [optional] 
**bodyMD5Hash** | **NSString*** | A hash signature of the email message | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**charset** | **NSString*** | Detected character set of the email body such as UTF-8 | [optional] 
**createdAt** | **NSDate*** | When was the email received by MailSlurp | [optional] 
**from** | **NSString*** | Who the email was sent from | [optional] 
**headers** | **NSDictionary&lt;NSString*, NSString*&gt;*** | Collection of SMTP headers attached to email | [optional] 
**_id** | **NSString*** | ID of the email entity | [optional] 
**inboxId** | **NSString*** | ID of the inbox that received the email | [optional] 
**isHTML** | **NSNumber*** | Is the email body HTML | [optional] 
**read** | **NSNumber*** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API? If so the email is marked as read. | [optional] 
**replyTo** | **NSString*** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**subject** | **NSString*** | The subject line of the email message | [optional] 
**teamAccess** | **NSNumber*** | Can the email be accessed by organization team members | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipients that email was addressed to | [optional] 
**updatedAt** | **NSDate*** | When was the email last updated | [optional] 
**userId** | **NSString*** | ID of user that email belongs to | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


