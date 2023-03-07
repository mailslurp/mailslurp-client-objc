# OAIWebhookDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | ID of the Webhook | 
**userId** | **NSString*** | User ID of the Webhook | 
**basicAuth** | **NSNumber*** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**name** | **NSString*** | Name of the webhook | [optional] 
**phoneId** | **NSString*** | The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set | [optional] 
**inboxId** | **NSString*** | The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set | [optional] 
**requestBodyTemplate** | **NSString*** | Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload. | [optional] 
**url** | **NSString*** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**method** | **NSString*** | HTTP method that your server endpoint must listen for | 
**payloadJsonSchema** | **NSString*** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**createdAt** | **NSDate*** | When the webhook was created | 
**updatedAt** | **NSDate*** |  | 
**eventName** | **NSString*** | Webhook trigger event name | [optional] 
**requestHeaders** | [**OAIWebhookHeaders***](OAIWebhookHeaders) |  | [optional] 
**ignoreInsecureSslCertificates** | **NSNumber*** | Should notifier ignore insecure SSL certificates | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


