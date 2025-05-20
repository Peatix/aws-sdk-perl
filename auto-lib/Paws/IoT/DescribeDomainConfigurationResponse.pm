
package Paws::IoT::DescribeDomainConfigurationResponse;
  use Moose;
  has ApplicationProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationProtocol');
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has AuthorizerConfig => (is => 'ro', isa => 'Paws::IoT::AuthorizerConfig', traits => ['NameInRequest'], request_name => 'authorizerConfig');
  has ClientCertificateConfig => (is => 'ro', isa => 'Paws::IoT::ClientCertificateConfig', traits => ['NameInRequest'], request_name => 'clientCertificateConfig');
  has DomainConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationArn');
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationName');
  has DomainConfigurationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationStatus');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has DomainType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainType');
  has LastStatusChangeDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStatusChangeDate');
  has ServerCertificateConfig => (is => 'ro', isa => 'Paws::IoT::ServerCertificateConfig', traits => ['NameInRequest'], request_name => 'serverCertificateConfig');
  has ServerCertificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ServerCertificateSummary]', traits => ['NameInRequest'], request_name => 'serverCertificates');
  has ServiceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceType');
  has TlsConfig => (is => 'ro', isa => 'Paws::IoT::TlsConfig', traits => ['NameInRequest'], request_name => 'tlsConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDomainConfigurationResponse

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

C<DEFAULT> - Use a combination of port and Application Layer Protocol
Negotiation (ALPN) to specify authentication type. For more
information, see Device communication protocols
(https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html).

=back


Valid values are: C<"CUSTOM_AUTH_X509">, C<"CUSTOM_AUTH">, C<"AWS_X509">, C<"AWS_SIGV4">, C<"DEFAULT">
=head2 AuthorizerConfig => L<Paws::IoT::AuthorizerConfig>

An object that specifies the authorization service for a domain.


=head2 ClientCertificateConfig => L<Paws::IoT::ClientCertificateConfig>

An object that species the client certificate conguration for a domain.


=head2 DomainConfigurationArn => Str

The ARN of the domain configuration.


=head2 DomainConfigurationName => Str

The name of the domain configuration.


=head2 DomainConfigurationStatus => Str

A Boolean value that specifies the current state of the domain
configuration.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 DomainName => Str

The name of the domain.


=head2 DomainType => Str

The type of the domain.

Valid values are: C<"ENDPOINT">, C<"AWS_MANAGED">, C<"CUSTOMER_MANAGED">
=head2 LastStatusChangeDate => Str

The date and time the domain configuration's status was last changed.


=head2 ServerCertificateConfig => L<Paws::IoT::ServerCertificateConfig>

The server certificate configuration.


=head2 ServerCertificates => ArrayRef[L<Paws::IoT::ServerCertificateSummary>]

A list containing summary information about the server certificate
included in the domain configuration.


=head2 ServiceType => Str

The type of service delivered by the endpoint.

Valid values are: C<"DATA">, C<"CREDENTIAL_PROVIDER">, C<"JOBS">
=head2 TlsConfig => L<Paws::IoT::TlsConfig>

An object that specifies the TLS configuration for a domain.


=head2 _request_id => Str


=cut

