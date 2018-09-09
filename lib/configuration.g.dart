// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'issuer',
    'authorization_endpoint',
    'token_endpoint',
    'userinfo_endpoint',
    'jwks_uri',
    'response_types_supported',
    'subject_types_supported',
    'id_token_signing_alg_values_supported'
  ]);
  return Configuration(
      issuer: json['issuer'] as String,
      authorizationEndpoint: json['authorization_endpoint'] as String,
      tokenEndpoint: json['token_endpoint'] as String,
      userInfoEndpoint: json['userinfo_endpoint'] as String,
      jwksUri: json['jwks_uri'] as String,
      registrationEndpoint: json['registration_endpoint'] as String,
      scopesSupported:
          (json['scopes_supported'] as List)?.map((e) => e as String)?.toList(),
      responseTypesSupported: (json['response_types_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      responseModesSupported: (json['response_modes_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      grantTypesSupported: (json['grant_types_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      acrValuesSupported: (json['acr_values_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      subjectTypesSupported: (json['subject_types_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      idTokenSigningAlgValuesSupported: (json['id_token_signing_alg_values_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      idTokenEncryptionAlgValuesSupported:
          (json['id_token_encryption_alg_values_supported'] as List)
              ?.map((e) => e as String)
              ?.toList(),
      idTokenEncryptionEncValuesSupported:
          (json['id_token_encryption_enc_values_supported'] as List)
              ?.map((e) => e as String)
              ?.toList(),
      userInfoSigningAlgValuesSupported: (json['userinfo_signing_alg_values_supported'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      userInfoEncryptionAlgValuesSupported:
          (json['userinfo_encryption_alg_values_supported'] as List)
              ?.map((e) => e as String)
              ?.toList(),
      userInfoEncryptionEncValuesSupported:
          (json['userinfo_encryption_enc_values_supported'] as List)
              ?.map((e) => e as String)
              ?.toList(),
      requestObjectSigningAlgValuesSupported:
          (json['request_object_signing_alg_values_supported'] as List)
              ?.map((e) => e as String)
              ?.toList(),
      requestObjectEncryptionAlgValuesSupported:
          (json['request_object_encryption_alg_values_supported'] as List)?.map((e) => e as String)?.toList(),
      requestObjectEncryptionEncValuesSupported: (json['request_object_encryption_enc_values_supported'] as List)?.map((e) => e as String)?.toList(),
      tokenEndpointAuthMethodsSupported: (json['token_endpoint_auth_methods_supported'] as List)?.map((e) => e as String)?.toList(),
      tokenEndpointAuthSigningAlgValuesSupported: (json['token_endpoint_auth_signing_alg_values_supported'] as List)?.map((e) => e as String)?.toList(),
      displayValuesSupported: (json['display_values_supported'] as List)?.map((e) => e as String)?.toList(),
      claimTypesSupported: (json['claim_types_supported'] as List)?.map((e) => e as String)?.toList(),
      claimsSupported: (json['claims_supported'] as List)?.map((e) => e as String)?.toList(),
      serviceDocumentation: json['service_documentation'] as String,
      claimsLocalesSupported: (json['claims_locales_supported'] as List)?.map((e) => e as String)?.toList(),
      uiLocalesSupported: (json['ui_locales_supported'] as List)?.map((e) => e as String)?.toList(),
      claimsParameterSupported: json['claims_parameter_supported'] as bool,
      requestParameterSupported: json['request_parameter_supported'] as bool,
      requestUriParameterSupported: json['request_uri_parameter_supported'] as bool,
      requireRequestUriRegistration: json['require_request_uri_registration'] as bool,
      opPolicyUri: json['op_policy_uri'] as String,
      opTosUri: json['op_tos_uri'] as String,
      revocationEndpoint: json['revocation_endpoint'] as String,
      revocationEndpointAuthMethodsSupported: (json['revocation_endpoint_auth_methods_supported'] as List)?.map((e) => e as String)?.toList(),
      revocationEndpointAuthSigningAlgValuesSupported: (json['revocation_endpoint_auth_signing_alg_values_supported'] as List)?.map((e) => e as String)?.toList(),
      introspectionEndpoint: json['introspection_endpoint'] as String,
      introspectionEndpointAuthMethodsSupported: (json['introspection_endpoint_auth_methods_supported'] as List)?.map((e) => e as String)?.toList(),
      introspectionEndpointAuthSigningAlgValuesSupported: (json['introspection_endpoint_auth_signing_alg_values_supported'] as List)?.map((e) => e as String)?.toList(),
      codeChallengeMethodsSupported: (json['code_challenge_methods_supported'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorization_endpoint': instance.authorizationEndpoint,
      'token_endpoint': instance.tokenEndpoint,
      'userinfo_endpoint': instance.userInfoEndpoint,
      'jwks_uri': instance.jwksUri,
      'registration_endpoint': instance.registrationEndpoint,
      'scopes_supported': instance.scopesSupported,
      'response_types_supported': instance.responseTypesSupported,
      'response_modes_supported': instance.responseModesSupported,
      'grant_types_supported': instance.grantTypesSupported,
      'acr_values_supported': instance.acrValuesSupported,
      'subject_types_supported': instance.subjectTypesSupported,
      'id_token_signing_alg_values_supported':
          instance.idTokenSigningAlgValuesSupported,
      'id_token_encryption_alg_values_supported':
          instance.idTokenEncryptionAlgValuesSupported,
      'id_token_encryption_enc_values_supported':
          instance.idTokenEncryptionEncValuesSupported,
      'userinfo_signing_alg_values_supported':
          instance.userInfoSigningAlgValuesSupported,
      'userinfo_encryption_alg_values_supported':
          instance.userInfoEncryptionAlgValuesSupported,
      'userinfo_encryption_enc_values_supported':
          instance.userInfoEncryptionEncValuesSupported,
      'request_object_signing_alg_values_supported':
          instance.requestObjectSigningAlgValuesSupported,
      'request_object_encryption_alg_values_supported':
          instance.requestObjectEncryptionAlgValuesSupported,
      'request_object_encryption_enc_values_supported':
          instance.requestObjectEncryptionEncValuesSupported,
      'token_endpoint_auth_methods_supported':
          instance.tokenEndpointAuthMethodsSupported,
      'token_endpoint_auth_signing_alg_values_supported':
          instance.tokenEndpointAuthSigningAlgValuesSupported,
      'display_values_supported': instance.displayValuesSupported,
      'claim_types_supported': instance.claimTypesSupported,
      'claims_supported': instance.claimsSupported,
      'service_documentation': instance.serviceDocumentation,
      'claims_locales_supported': instance.claimsLocalesSupported,
      'ui_locales_supported': instance.uiLocalesSupported,
      'claims_parameter_supported': instance.claimsParameterSupported,
      'request_parameter_supported': instance.requestParameterSupported,
      'request_uri_parameter_supported': instance.requestUriParameterSupported,
      'require_request_uri_registration':
          instance.requireRequestUriRegistration,
      'op_policy_uri': instance.opPolicyUri,
      'op_tos_uri': instance.opTosUri,
      'revocation_endpoint': instance.revocationEndpoint,
      'revocation_endpoint_auth_methods_supported':
          instance.revocationEndpointAuthMethodsSupported,
      'revocation_endpoint_auth_signing_alg_values_supported':
          instance.revocationEndpointAuthSigningAlgValuesSupported,
      'introspection_endpoint': instance.introspectionEndpoint,
      'introspection_endpoint_auth_methods_supported':
          instance.introspectionEndpointAuthMethodsSupported,
      'introspection_endpoint_auth_signing_alg_values_supported':
          instance.introspectionEndpointAuthSigningAlgValuesSupported,
      'code_challenge_methods_supported': instance.codeChallengeMethodsSupported
    };
