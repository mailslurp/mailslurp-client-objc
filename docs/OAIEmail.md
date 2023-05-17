# OAIEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | ID of the email entity | 
**userId** | **NSString*** | ID of user that email belongs to | 
**inboxId** | **NSString*** | ID of the inbox that received the email | 
**domainId** | **NSString*** | ID of the domain that received the email | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **NSString*** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**sender** | [**OAISender***](OAISender) |  | [optional] 
**recipients** | [**OAIEmailRecipients***](OAIEmailRecipients) |  | [optional] 
**replyTo** | **NSString*** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**headers** | **NSDictionary&lt;NSString*, NSString*&gt;*** | Collection of SMTP headers attached to email | [optional] 
**headersMap** | [**NSDictionary&lt;NSString*, NSArray&lt;NSString*&gt;*&gt;***](NSArray) | Multi-value map of SMTP headers attached to email | [optional] 
**attachments** | **NSArray&lt;NSString*&gt;*** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**subject** | **NSString*** | The subject line of the email message as specified by SMTP subject header | [optional] 
**body** | **NSString*** | The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. | [optional] 
**bodyExcerpt** | **NSString*** | An excerpt of the body of the email message for quick preview . | [optional] 
**bodyMD5Hash** | **NSString*** | A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. | [optional] 
**isHTML** | **NSNumber*** | Is the email body content type HTML? | [optional] 
**charset** | **NSString*** | Detected character set of the email body such as UTF-8 | [optional] 
**analysis** | [**OAIEmailAnalysis***](OAIEmailAnalysis) |  | [optional] 
**createdAt** | **NSDate*** | When was the email received by MailSlurp | 
**updatedAt** | **NSDate*** | When was the email last updated | 
**read** | **NSNumber*** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | 
**teamAccess** | **NSNumber*** | Can the email be accessed by organization team members | 
**html** | **NSNumber*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


