
package Paws::IoT::UpdateDomainConfiguration;
  use Moose;
  has ApplicationProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationProtocol');
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has AuthorizerConfig => (is => 'ro', isa => 'Paws::IoT::AuthorizerConfig', traits => ['NameInRequest'], request_name => 'authorizerConfig');
  has ClientCertificateConfig => (is => 'ro', isa => 'Paws::IoT::ClientCertificateConfig', traits => ['NameInRequest'], request_name => 'clientCertificateConfig');
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainConfigurationName', required => 1);
  has DomainConfigurationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationStatus');
  has RemoveAuthorizerConfig => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeAuthorizerConfig');
  has ServerCertificateConfig => (is => 'ro', isa => 'Paws::IoT::ServerCertificateConfig', traits => ['NameInRequest'], request_name => 'serverCertificateConfig');
  has TlsConfig => (is => 'ro', isa => 'Paws::IoT::TlsConfig', traits => ['NameInRequest'], request_name => 'tlsConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainConfigurations/{domainConfigurationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateDomainConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDomainConfiguration - Arguments for method UpdateDomainConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateDomainConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateDomainConfigurationResponse = $iot->UpdateDomainConfiguration(
      DomainConfigurationName => 'MyReservedDomainConfigurationName',
      ApplicationProtocol     => 'SECURE_MQTT',                       # OPTIONAL
      AuthenticationType      => 'CUSTOM_AUTH_X509',                  # OPTIONAL
      AuthorizerConfig        => {
        AllowAuthorizerOverride => 1,                                 # OPTIONAL
        DefaultAuthorizerName   =>
          'MyAuthorizerName',    # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      ClientCertificateConfig => {
        ClientCertificateCallbackArn =>
          'MyClientCertificateCallbackArn',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      DomainConfigurationStatus => 'ENABLED',    # OPTIONAL
      RemoveAuthorizerConfig    => 1,            # OPTIONAL
      ServerCertificateConfig   => {
        EnableOCSPCheck            => 1,         # OPTIONAL
        OcspAuthorizedResponderArn =>
          'MyAcmCertificateArn',                 # min: 1, max: 2048; OPTIONAL
        OcspLambdaArn => 'MyOCSPLambdaArn',      # max: 140; OPTIONAL
      },    # OPTIONAL
      TlsConfig => {
        SecurityPolicy => 'MySecurityPolicy',    # max: 128; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DomainConfigurationArn =
      $UpdateDomainConfigurationResponse->DomainConfigurationArn;
    my $DomainConfigurationName =
      $UpdateDomainConfigurationResponse->DomainConfigurationName;

    # Returns a L<Paws::IoT::UpdateDomainConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateDomainConfiguration>

=head1 ATTRIBUTES


=head2 ApplicationProtocol => Str

An enumerated string that species the application-layer protocol.

=over

=item *

C<SECURE_MQTT> - MQTT over TLS.

=back

=over

=item *

C<MQTT_WSS> - MQTT over WebSocket.

=back

=over

=item *

C<HTTPS> - HTTP over TLS.

=back

=over

=item *

C<DEFAULT> - Use a combination of port and Application Layer Protocol
Negotiation (ALPN) to specify application_layer protocol. For more
information, see Device communication protocols
(https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html).

=back


Valid values are: C<"SECURE_MQTT">, C<"MQTT_WSS">, C<"HTTPS">, C<"DEFAULT">

=head2 AuthenticationType => Str

An enumerated string that species the authentication type.

=over

=item *

C<CUSTOM_AUTH_X509> - Use custom authentication and authorization with
additional details from the X.509 client certificate.

=back

=over

=item *

C<CUSTOM_AUTH> - Use custom authentication and authorization. For more
information, see Custom authentication and authorization
(https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html).

=back

=over

=item *

C<AWS_X509> - Use X.509 client certificates without custom
authentication and authorization. For more information, see X.509
client certificates
(https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html).

=back

=over

=item *

C<AWS_SIGV4> - Use Amazon Web Services Signature Version 4. For more
information, see IAM users, groups, and roles
(https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html).

=back

=over

=item *

C<DEFAULT > - Use a combination of port and Application Layer Protocol
Negotiation (ALPN) to specify authentication type. For more
information, see Device communication protocols
(https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html).

=back


Valid values are: C<"CUSTOM_AUTH_X509">, C<"CUSTOM_AUTH">, C<"AWS_X509">, C<"AWS_SIGV4">, C<"DEFAULT">

=head2 AuthorizerConfig => L<Paws::IoT::AuthorizerConfig>

An object that specifies the authorization service for a domain.



=head2 ClientCertificateConfig => L<Paws::IoT::ClientCertificateConfig>

An object that species the client certificate conguration for a domain.



=head2 B<REQUIRED> DomainConfigurationName => Str

The name of the domain configuration to be updated.



=head2 DomainConfigurationStatus => Str

The status to which the domain configuration should be updated.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 RemoveAuthorizerConfig => Bool

Removes the authorization configuration from a domain.



=head2 ServerCertificateConfig => L<Paws::IoT::ServerCertificateConfig>

The server certificate configuration.



=head2 TlsConfig => L<Paws::IoT::TlsConfig>

An object that specifies the TLS configuration for a domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

