import 'package:json_annotation/json_annotation.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  @JsonKey(required: true)
  final String issuer;
  @JsonKey(name: 'authorization_endpoint', required: true)
  final String authorizationEndpoint;
  @JsonKey(name: 'token_endpoint', required: true)
  final String tokenEndpoint;
  @JsonKey(name: 'userinfo_endpoint', required: true)
  final String userInfoEndpoint;
  @JsonKey(name: 'jwks_uri', required: true)
  final String jwksUri;
  @JsonKey(name: 'registration_endpoint')
  final String registrationEndpoint;
  @JsonKey(name: 'scopes_supported')
  final List<String> scopesSupported;
  @JsonKey(name: 'response_types_supported', required: true)
  final List<String> responseTypesSupported;
  @JsonKey(name: 'response_modes_supported')
  final List<String> responseModesSupported;
  @JsonKey(name: 'grant_types_supported')
  final List<String> grantTypesSupported;
  @JsonKey(name: 'acr_values_supported')
  final List<String> acrValuesSupported;
  @JsonKey(name: 'subject_types_supported', required: true)
  final List<String> subjectTypesSupported;
  @JsonKey(name: 'id_token_signing_alg_values_supported', required: true)
  final List<String> idTokenSigningAlgValuesSupported;
  @JsonKey(name: 'id_token_encryption_alg_values_supported')
  final List<String> idTokenEncryptionAlgValuesSupported;
  @JsonKey(name: 'id_token_encryption_enc_values_supported')
  final List<String> idTokenEncryptionEncValuesSupported;
  @JsonKey(name: 'userinfo_signing_alg_values_supported')
  final List<String> userInfoSigningAlgValuesSupported;
  @JsonKey(name: 'userinfo_encryption_alg_values_supported')
  final List<String> userInfoEncryptionAlgValuesSupported;
  @JsonKey(name: 'userinfo_encryption_enc_values_supported')
  final List<String> userInfoEncryptionEncValuesSupported;
  @JsonKey(name: 'request_object_signing_alg_values_supported')
  final List<String> requestObjectSigningAlgValuesSupported;
  @JsonKey(name: 'request_object_encryption_alg_values_supported')
  final List<String> requestObjectEncryptionAlgValuesSupported;
  @JsonKey(name: 'request_object_encryption_enc_values_supported')
  final List<String> requestObjectEncryptionEncValuesSupported;
  @JsonKey(name: 'token_endpoint_auth_methods_supported')
  final List<String> tokenEndpointAuthMethodsSupported;
  @JsonKey(name: 'token_endpoint_auth_signing_alg_values_supported')
  final List<String> tokenEndpointAuthSigningAlgValuesSupported;
  @JsonKey(name: 'display_values_supported')
  final List<String> displayValuesSupported;
  @JsonKey(name: 'claim_types_supported')
  final List<String> claimTypesSupported;
  @JsonKey(name: 'claims_supported')
  final List<String> claimsSupported;
  @JsonKey(name: 'service_documentation')
  final String serviceDocumentation;
  @JsonKey(name: 'claims_locales_supported')
  final List<String> claimsLocalesSupported;
  @JsonKey(name: 'ui_locales_supported')
  final List<String> uiLocalesSupported;
  @JsonKey(name: 'claims_parameter_supported')
  final bool claimsParameterSupported;
  @JsonKey(name: 'request_parameter_supported')
  final bool requestParameterSupported;
  @JsonKey(name: 'request_uri_parameter_supported')
  final bool requestUriParameterSupported;
  @JsonKey(name: 'require_request_uri_registration')
  final bool requireRequestUriRegistration;
  @JsonKey(name: 'op_policy_uri')
  final String opPolicyUri;
  @JsonKey(name: 'op_tos_uri')
  final String opTosUri;

  // OAuth
  @JsonKey(name: 'revocation_endpoint')
  final String revocationEndpoint;
  @JsonKey(name: 'revocation_endpoint_auth_methods_supported')
  final List<String> revocationEndpointAuthMethodsSupported;
  @JsonKey(name: 'revocation_endpoint_auth_signing_alg_values_supported')
  final List<String> revocationEndpointAuthSigningAlgValuesSupported;
  @JsonKey(name: 'introspection_endpoint')
  final String introspectionEndpoint;
  @JsonKey(name: 'introspection_endpoint_auth_methods_supported')
  final List<String> introspectionEndpointAuthMethodsSupported;
  @JsonKey(name: 'introspection_endpoint_auth_signing_alg_values_supported')
  final List<String> introspectionEndpointAuthSigningAlgValuesSupported;
  @JsonKey(name: 'code_challenge_methods_supported')
  final List<String> codeChallengeMethodsSupported;

  Configuration({
    this.issuer,
    this.authorizationEndpoint,
    this.tokenEndpoint,
    this.userInfoEndpoint,
    this.jwksUri,
    this.registrationEndpoint,
    this.scopesSupported,
    this.responseTypesSupported,
    this.responseModesSupported,
    this.grantTypesSupported,
    this.acrValuesSupported,
    this.subjectTypesSupported,
    this.idTokenSigningAlgValuesSupported,
    this.idTokenEncryptionAlgValuesSupported,
    this.idTokenEncryptionEncValuesSupported,
    this.userInfoSigningAlgValuesSupported,
    this.userInfoEncryptionAlgValuesSupported,
    this.userInfoEncryptionEncValuesSupported,
    this.requestObjectSigningAlgValuesSupported,
    this.requestObjectEncryptionAlgValuesSupported,
    this.requestObjectEncryptionEncValuesSupported,
    this.tokenEndpointAuthMethodsSupported,
    this.tokenEndpointAuthSigningAlgValuesSupported,
    this.displayValuesSupported,
    this.claimTypesSupported,
    this.claimsSupported,
    this.serviceDocumentation,
    this.claimsLocalesSupported,
    this.uiLocalesSupported,
    this.claimsParameterSupported,
    this.requestParameterSupported,
    this.requestUriParameterSupported,
    this.requireRequestUriRegistration,
    this.opPolicyUri,
    this.opTosUri,
    this.revocationEndpoint,
    this.revocationEndpointAuthMethodsSupported,
    this.revocationEndpointAuthSigningAlgValuesSupported,
    this.introspectionEndpoint,
    this.introspectionEndpointAuthMethodsSupported,
    this.introspectionEndpointAuthSigningAlgValuesSupported,
    this.codeChallengeMethodsSupported,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}
