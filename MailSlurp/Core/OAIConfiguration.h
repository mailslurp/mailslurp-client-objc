#import <Foundation/Foundation.h>

@class OAILogger;

/**
* MailSlurp API
* For documentation see [developer guide](https://www.mailslurp.com/developers). [Create an account](https://app.mailslurp.com) in the MailSlurp Dashboard to [view your API Key](https://app). For all bugs, feature requests, or help please [see support](https://www.mailslurp.com/support/).
*
* OpenAPI spec version: 0.0.1-alpha
* Contact: contact@mailslurp.dev
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


static NSString * const kOAIAPIVersion = @"4.5.0";

@protocol OAIConfiguration <NSObject>

/**
 * Api logger
 */
@property (readonly, nonatomic) OAILogger *logger;

/**
 * Base url
 */
@property (readonly, nonatomic) NSString *host;

/**
 * Api key values for Api Key type Authentication
 */
@property (readonly, nonatomic) NSDictionary *apiKey;

/**
 * Api key prefix values to be prepend to the respective api key
 */
@property (readonly, nonatomic) NSDictionary *apiKeyPrefix;

/**
 * Username for HTTP Basic Authentication
 */
@property (readonly, nonatomic) NSString *username;

/**
 * Password for HTTP Basic Authentication
 */
@property (readonly, nonatomic) NSString *password;

/**
 * Access token for OAuth
 */
@property (readonly, nonatomic) NSString *accessToken;

/**
 * Temp folder for file download
 */
@property (readonly, nonatomic) NSString *tempFolderPath;

/**
 * Debug switch, default false
 */
@property (readonly, nonatomic) BOOL debug;

/**
 * SSL/TLS verification
 * Set this to NO to skip verifying SSL certificate when calling API from https server
 */
@property (readonly, nonatomic) BOOL verifySSL;

/**
 * SSL/TLS verification
 * Set this to customize the certificate file to verify the peer
 */
@property (readonly, nonatomic) NSString *sslCaCert;

/**
 * Authentication Settings
 */
@property (readonly, nonatomic) NSDictionary *authSettings;

/**
* Default headers for all services
*/
@property (readonly, nonatomic, strong) NSDictionary *defaultHeaders;

@end