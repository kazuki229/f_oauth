import 'package:f_oauth/configuration.dart';
import 'package:f_oauth/f_oauth.dart';
import 'package:test/test.dart';

void main() {
  test('https://auth.login.yahoo.co.jp/yconnect/v2/', () async {
    final FOauth auth = FOauth();
    final Configuration configuration = await auth.fetchOpenidConfiguration(
      'https://auth.login.yahoo.co.jp/yconnect/v2/.well-known/openid-configuration',
    );
    expect(configuration.issuer, 'https://auth.login.yahoo.co.jp/yconnect/v2');
    expect(configuration.authorizationEndpoint,
        'https://auth.login.yahoo.co.jp/yconnect/v2/authorization');
    expect(configuration.tokenEndpoint,
        'https://auth.login.yahoo.co.jp/yconnect/v2/token');
    expect(configuration.userInfoEndpoint,
        'https://userinfo.yahooapis.jp/yconnect/v2/attribute');
    expect(configuration.jwksUri,
        'https://auth.login.yahoo.co.jp/yconnect/v2/jwks');
    expect(configuration.responseTypesSupported, [
      'code',
      'token',
      'id_token',
      'code token',
      'code id_token',
      'token id_token',
      'code token id_token',
    ]);
    expect(configuration.tokenEndpointAuthMethodsSupported, [
      'client_secret_post',
      'client_secret_basic',
    ]);
    expect(configuration.claimsSupported, [
      'sub',
      'name',
      'given_name',
      'family_name',
      'email',
      'email_verified',
      'gender',
      'birthdate',
      'zoneinfo',
      'locale',
      'address',
      'iss',
      'aud',
      'exp',
      'iat',
      'nickname',
      'picture',
    ]);
    expect(configuration.displayValuesSupported, [
      'page',
      'popup',
      'touch',
    ]);
    expect(configuration.serviceDocumentation,
        'https://developer.yahoo.co.jp/yconnect/');
    expect(configuration.claimsLocalesSupported, ['ja-JP']);
    expect(configuration.uiLocalesSupported, ['ja-JP']);
    expect(configuration.opPolicyUri,
        'https://developer.yahoo.co.jp/yconnect/v2/guideline.html');
    expect(configuration.opTosUri,
        'https://developer.yahoo.co.jp/yconnect/v2/guideline.html');
  });

  test('https://accounts.google.com/.well-known/openid-configuration',
      () async {
    final FOauth auth = FOauth();
    final Configuration configuration = await auth.fetchOpenidConfiguration(
      'https://accounts.google.com/.well-known/openid-configuration',
    );
    expect(configuration.issuer, 'https://accounts.google.com');
    expect(configuration.authorizationEndpoint,
        'https://accounts.google.com/o/oauth2/v2/auth');
    expect(configuration.tokenEndpoint, 'https://oauth2.googleapis.com/token');
    expect(configuration.userInfoEndpoint,
        'https://www.googleapis.com/oauth2/v3/userinfo');
    expect(configuration.revocationEndpoint,
        'https://oauth2.googleapis.com/revoke');
    expect(configuration.jwksUri, 'https://www.googleapis.com/oauth2/v3/certs');
    expect(configuration.responseTypesSupported, [
      'code',
      'token',
      'id_token',
      'code token',
      'code id_token',
      'token id_token',
      'code token id_token',
      'none',
    ]);
    expect(configuration.subjectTypesSupported, [
      'public',
    ]);
    expect(configuration.idTokenSigningAlgValuesSupported, [
      'RS256',
    ]);
    expect(configuration.scopesSupported, [
      'openid',
      'email',
      'profile',
    ]);
    expect(configuration.tokenEndpointAuthMethodsSupported, [
      'client_secret_post',
      'client_secret_basic',
    ]);
    expect(configuration.claimsSupported, [
      'aud',
      'email',
      'email_verified',
      'exp',
      'family_name',
      'given_name',
      'iat',
      'iss',
      'locale',
      'name',
      'picture',
      'sub',
    ]);
    expect(configuration.codeChallengeMethodsSupported, [
      'plain',
      'S256',
    ]);
  });

  test('https://www.paypalobjects.com/.well-known/openid-configuration',
      () async {
    final FOauth auth = FOauth();
    final Configuration configuration = await auth.fetchOpenidConfiguration(
      'https://www.paypalobjects.com/.well-known/openid-configuration',
    );
    expect(configuration.issuer, 'https://www.paypal.com');
    expect(configuration.authorizationEndpoint,
        'https://www.paypal.com/signin/authorize');
    expect(
        configuration.tokenEndpoint, 'https://api.paypal.com/v1/oauth2/token');
    expect(configuration.userInfoEndpoint,
        'https://api.paypal.com/v1/oauth2/token/userinfo');
    expect(configuration.jwksUri, 'https://api.paypal.com/v1/oauth2/certs');
    expect(configuration.tokenEndpointAuthMethodsSupported, [
      'client_secret_basic',
    ]);
    expect(configuration.responseTypesSupported, [
      'code',
      'code id_token',
    ]);
    expect(configuration.responseModesSupported, [
      'query',
      'form_post',
    ]);
    expect(configuration.grantTypesSupported, [
      'authorization_code',
      'refresh_token',
    ]);
    expect(configuration.subjectTypesSupported, [
      'pairwise',
    ]);
    expect(configuration.scopesSupported, [
      'email',
      'address',
      'phone',
      'openid',
      'profile',
      'https://uri.paypal.com/services/wallet/sendmoney',
      'https://uri.paypal.com/services/payments/futurepayments',
      'https://uri.paypal.com/services/expresscheckout',
    ]);
    expect(configuration.idTokenSigningAlgValuesSupported, [
      'HS256',
      'RS256',
    ]);
    expect(configuration.claimsSupported, [
      'aud',
      'iss',
      'iat',
      'exp',
      'auth_time',
      'nonce',
      'sessionIndex',
      'user_id',
    ]);
    expect(configuration.codeChallengeMethodsSupported, [
      'RS256',
      'ES256',
      'S256',
    ]);
  });
}
