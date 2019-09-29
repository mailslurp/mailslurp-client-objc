# MailSlurp

For documentation see [developer guide](https://www.mailslurp.com/developers). [Create an account](https://app.mailslurp.com) in the MailSlurp Dashboard to [view your API Key](https://app). For all bugs, feature requests, or help please [see support](https://www.mailslurp.com/support/).

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.0.1-alpha
- Package version: 
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen
For more information, please visit [https://www.mailslurp.com](https://www.mailslurp.com)

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'MailSlurp', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/MailSlurp) and then add the following to the Podfile:

```ruby
pod 'MailSlurp', :path => 'Vendor/MailSlurp'
```

### Usage

Import the following:

```objc
#import <MailSlurp/OAIApiClient.h>
#import <MailSlurp/OAIDefaultConfiguration.h>
// load models
#import <MailSlurp/OAIBasicAuthOptions.h>
#import <MailSlurp/OAIBulkSendEmailOptions.h>
#import <MailSlurp/OAICreateDomainOptions.h>
#import <MailSlurp/OAICreateWebhookOptions.h>
#import <MailSlurp/OAIDomainPlusVerificationRecordsAndStatus.h>
#import <MailSlurp/OAIDomainPreview.h>
#import <MailSlurp/OAIEmail.h>
#import <MailSlurp/OAIEmailAnalysis.h>
#import <MailSlurp/OAIEmailPreview.h>
#import <MailSlurp/OAIEmailProjection.h>
#import <MailSlurp/OAIForwardEmailOptions.h>
#import <MailSlurp/OAIInbox.h>
#import <MailSlurp/OAIMatchOption.h>
#import <MailSlurp/OAIMatchOptions.h>
#import <MailSlurp/OAIPageEmailProjection.h>
#import <MailSlurp/OAIPageable.h>
#import <MailSlurp/OAISendEmailOptions.h>
#import <MailSlurp/OAISort.h>
#import <MailSlurp/OAIUploadAttachmentOptions.h>
#import <MailSlurp/OAIWebhook.h>
// load API classes for accessing endpoints
#import <MailSlurp/OAICommonOperationsApi.h>
#import <MailSlurp/OAIExtraOperationsApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAICommonOperationsApi *apiInstance = [[OAICommonOperationsApi alloc] init];

// Create new email address
[apiInstance createNewEmailAddressWithCompletionHandler: 
              ^(OAIInbox* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.mailslurp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAICommonOperationsApi* | [**createNewEmailAddress**](docs/OAICommonOperationsApi.md#createnewemailaddress) | **POST** /newEmailAddress | Create new email address
*OAICommonOperationsApi* | [**deleteEmail**](docs/OAICommonOperationsApi.md#deleteemail) | **DELETE** /deleteEmail | Delete an email
*OAICommonOperationsApi* | [**deleteEmailAddress**](docs/OAICommonOperationsApi.md#deleteemailaddress) | **DELETE** /deleteEmailAddress | Delete email address and its emails
*OAICommonOperationsApi* | [**emptyInbox**](docs/OAICommonOperationsApi.md#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
*OAICommonOperationsApi* | [**sendEmailSimple**](docs/OAICommonOperationsApi.md#sendemailsimple) | **POST** /sendEmail | Send an email from a random email address
*OAICommonOperationsApi* | [**waitForEmailCount**](docs/OAICommonOperationsApi.md#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
*OAICommonOperationsApi* | [**waitForLatestEmail**](docs/OAICommonOperationsApi.md#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for email to arrive
*OAICommonOperationsApi* | [**waitForMatchingEmail**](docs/OAICommonOperationsApi.md#waitformatchingemail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
*OAICommonOperationsApi* | [**waitForNthEmail**](docs/OAICommonOperationsApi.md#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified
*OAIExtraOperationsApi* | [**bulkCreateInboxes**](docs/OAIExtraOperationsApi.md#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
*OAIExtraOperationsApi* | [**bulkDeleteInboxes**](docs/OAIExtraOperationsApi.md#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
*OAIExtraOperationsApi* | [**bulkSendEmails**](docs/OAIExtraOperationsApi.md#bulksendemails) | **POST** /bulk/send | Bulk Send Emails
*OAIExtraOperationsApi* | [**createDomain**](docs/OAIExtraOperationsApi.md#createdomain) | **POST** /domains | Create Domain
*OAIExtraOperationsApi* | [**createInbox**](docs/OAIExtraOperationsApi.md#createinbox) | **POST** /inboxes | Create an Inbox (email address)
*OAIExtraOperationsApi* | [**createWebhook**](docs/OAIExtraOperationsApi.md#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
*OAIExtraOperationsApi* | [**deleteDomain**](docs/OAIExtraOperationsApi.md#deletedomain) | **DELETE** /domains/{id} | Delete a domain
*OAIExtraOperationsApi* | [**deleteEmail1**](docs/OAIExtraOperationsApi.md#deleteemail1) | **DELETE** /emails/{emailId} | Delete Email
*OAIExtraOperationsApi* | [**deleteInbox**](docs/OAIExtraOperationsApi.md#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete Inbox / Email Address
*OAIExtraOperationsApi* | [**deleteWebhook**](docs/OAIExtraOperationsApi.md#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a WebHook for an Inbox
*OAIExtraOperationsApi* | [**downloadAttachment**](docs/OAIExtraOperationsApi.md#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment
*OAIExtraOperationsApi* | [**forwardEmail**](docs/OAIExtraOperationsApi.md#forwardemail) | **POST** /emails/{emailId}/forward | Forward Email
*OAIExtraOperationsApi* | [**getDomain**](docs/OAIExtraOperationsApi.md#getdomain) | **GET** /domains/{id} | Get a domain
*OAIExtraOperationsApi* | [**getDomains**](docs/OAIExtraOperationsApi.md#getdomains) | **GET** /domains | Get domains
*OAIExtraOperationsApi* | [**getEmail**](docs/OAIExtraOperationsApi.md#getemail) | **GET** /emails/{emailId} | Get Email Content
*OAIExtraOperationsApi* | [**getEmails**](docs/OAIExtraOperationsApi.md#getemails) | **GET** /inboxes/{inboxId}/emails | List Emails in an Inbox / EmailAddress
*OAIExtraOperationsApi* | [**getEmailsPaginated**](docs/OAIExtraOperationsApi.md#getemailspaginated) | **GET** /emails | Get all emails
*OAIExtraOperationsApi* | [**getInbox**](docs/OAIExtraOperationsApi.md#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox / EmailAddress
*OAIExtraOperationsApi* | [**getInboxes**](docs/OAIExtraOperationsApi.md#getinboxes) | **GET** /inboxes | List Inboxes / Email Addresses
*OAIExtraOperationsApi* | [**getRawEmailContents**](docs/OAIExtraOperationsApi.md#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get Raw Email Content
*OAIExtraOperationsApi* | [**getWebhooks**](docs/OAIExtraOperationsApi.md#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all WebHooks for an Inbox
*OAIExtraOperationsApi* | [**sendEmail**](docs/OAIExtraOperationsApi.md#sendemail) | **POST** /inboxes/{inboxId} | Send Email
*OAIExtraOperationsApi* | [**uploadAttachment**](docs/OAIExtraOperationsApi.md#uploadattachment) | **POST** /attachments | Upload an attachment for sending
*OAIExtraOperationsApi* | [**uploadMultipartForm**](docs/OAIExtraOperationsApi.md#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form


## Documentation For Models

 - [OAIBasicAuthOptions](docs/OAIBasicAuthOptions.md)
 - [OAIBulkSendEmailOptions](docs/OAIBulkSendEmailOptions.md)
 - [OAICreateDomainOptions](docs/OAICreateDomainOptions.md)
 - [OAICreateWebhookOptions](docs/OAICreateWebhookOptions.md)
 - [OAIDomainPlusVerificationRecordsAndStatus](docs/OAIDomainPlusVerificationRecordsAndStatus.md)
 - [OAIDomainPreview](docs/OAIDomainPreview.md)
 - [OAIEmail](docs/OAIEmail.md)
 - [OAIEmailAnalysis](docs/OAIEmailAnalysis.md)
 - [OAIEmailPreview](docs/OAIEmailPreview.md)
 - [OAIEmailProjection](docs/OAIEmailProjection.md)
 - [OAIForwardEmailOptions](docs/OAIForwardEmailOptions.md)
 - [OAIInbox](docs/OAIInbox.md)
 - [OAIMatchOption](docs/OAIMatchOption.md)
 - [OAIMatchOptions](docs/OAIMatchOptions.md)
 - [OAIPageEmailProjection](docs/OAIPageEmailProjection.md)
 - [OAIPageable](docs/OAIPageable.md)
 - [OAISendEmailOptions](docs/OAISendEmailOptions.md)
 - [OAISort](docs/OAISort.md)
 - [OAIUploadAttachmentOptions](docs/OAIUploadAttachmentOptions.md)
 - [OAIWebhook](docs/OAIWebhook.md)


## Documentation For Authorization


## API_KEY

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author

contact@mailslurp.dev


