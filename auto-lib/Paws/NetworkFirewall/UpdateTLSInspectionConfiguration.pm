
package Paws::NetworkFirewall::UpdateTLSInspectionConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::EncryptionConfiguration');
  has TLSInspectionConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::TLSInspectionConfiguration', required => 1);
  has TLSInspectionConfigurationArn => (is => 'ro', isa => 'Str');
  has TLSInspectionConfigurationName => (is => 'ro', isa => 'Str');
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTLSInspectionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::UpdateTLSInspectionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateTLSInspectionConfiguration - Arguments for method UpdateTLSInspectionConfiguration on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTLSInspectionConfiguration on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method UpdateTLSInspectionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTLSInspectionConfiguration.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $UpdateTLSInspectionConfigurationResponse =
      $network -firewall->UpdateTLSInspectionConfiguration(
      TLSInspectionConfiguration => {
        ServerCertificateConfigurations => [
          {
            CertificateAuthorityArn =>
              'MyResourceArn',    # min: 1, max: 256; OPTIONAL
            CheckCertificateRevocationStatus => {
              RevokedStatusAction =>
                'PASS',           # values: PASS, DROP, REJECT; OPTIONAL
              UnknownStatusAction =>
                'PASS',           # values: PASS, DROP, REJECT; OPTIONAL
            },    # OPTIONAL
            Scopes => [
              {
                DestinationPorts => [
                  {
                    FromPort => 1,    # max: 65535
                    ToPort   => 1,    # max: 65535

                  },
                  ...
                ],    # OPTIONAL
                Destinations => [
                  {
                    AddressDefinition =>
                      'MyAddressDefinition',    # min: 1, max: 255

                  },
                  ...
                ],    # OPTIONAL
                Protocols => [
                  1, ...    # max: 255
                ],    # OPTIONAL
                SourcePorts => [
                  {
                    FromPort => 1,    # max: 65535
                    ToPort   => 1,    # max: 65535

                  },
                  ...
                ],    # OPTIONAL
                Sources => [
                  {
                    AddressDefinition =>
                      'MyAddressDefinition',    # min: 1, max: 255

                  },
                  ...
                ],    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            ServerCertificates => [
              {
                ResourceArn => 'MyResourceArn',    # min: 1, max: 256; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      UpdateToken             => 'MyUpdateToken',
      Description             => 'MyDescription',    # OPTIONAL
      EncryptionConfiguration => {
        Type  => 'CUSTOMER_KMS',    # values: CUSTOMER_KMS, AWS_OWNED_KMS_KEY
        KeyId => 'MyKeyId',         # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      TLSInspectionConfigurationArn  => 'MyResourceArn',     # OPTIONAL
      TLSInspectionConfigurationName => 'MyResourceName',    # OPTIONAL
      );

    # Results:
    my $TLSInspectionConfigurationResponse =
      $UpdateTLSInspectionConfigurationResponse
      ->TLSInspectionConfigurationResponse;
    my $UpdateToken = $UpdateTLSInspectionConfigurationResponse->UpdateToken;

# Returns a L<Paws::NetworkFirewall::UpdateTLSInspectionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/UpdateTLSInspectionConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the TLS inspection configuration.



=head2 EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>

A complex type that contains the Amazon Web Services KMS encryption
configuration settings for your TLS inspection configuration.



=head2 B<REQUIRED> TLSInspectionConfiguration => L<Paws::NetworkFirewall::TLSInspectionConfiguration>

The object that defines a TLS inspection configuration. This, along
with TLSInspectionConfigurationResponse, define the TLS inspection
configuration. You can retrieve all objects for a TLS inspection
configuration by calling DescribeTLSInspectionConfiguration.

Network Firewall uses a TLS inspection configuration to decrypt
traffic. Network Firewall re-encrypts the traffic before sending it to
its destination.

To use a TLS inspection configuration, you add it to a new Network
Firewall firewall policy, then you apply the firewall policy to a
firewall. Network Firewall acts as a proxy service to decrypt and
inspect the traffic traveling through your firewalls. You can reference
a TLS inspection configuration from more than one firewall policy, and
you can use a firewall policy in more than one firewall. For more
information about using TLS inspection configurations, see Inspecting
SSL/TLS traffic with TLS inspection configurations
(https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html)
in the I<Network Firewall Developer Guide>.



=head2 TLSInspectionConfigurationArn => Str

The Amazon Resource Name (ARN) of the TLS inspection configuration.



=head2 TLSInspectionConfigurationName => Str

The descriptive name of the TLS inspection configuration. You can't
change the name of a TLS inspection configuration after you create it.



=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the TLS inspection configuration. The
token marks the state of the TLS inspection configuration resource at
the time of the request.

To make changes to the TLS inspection configuration, you provide the
token in your request. Network Firewall uses the token to ensure that
the TLS inspection configuration hasn't changed since you last
retrieved it. If it has changed, the operation fails with an
C<InvalidTokenException>. If this happens, retrieve the TLS inspection
configuration again to get a current copy of it with a current token.
Reapply your changes as needed, then try the operation again using the
new token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTLSInspectionConfiguration in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

