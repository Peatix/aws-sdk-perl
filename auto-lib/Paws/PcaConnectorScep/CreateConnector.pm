
package Paws::PcaConnectorScep::CreateConnector;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has MobileDeviceManagement => (is => 'ro', isa => 'Paws::PcaConnectorScep::MobileDeviceManagement');
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorScep::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorScep::CreateConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::CreateConnector - Arguments for method CreateConnector on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnector on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method CreateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnector.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    my $CreateConnectorResponse = $pca -connector-scep->CreateConnector(
      CertificateAuthorityArn => 'MyCertificateAuthorityArn',
      ClientToken             => 'MyClientToken',               # OPTIONAL
      MobileDeviceManagement  => {
        Intune => {
          AzureApplicationId => 'MyAzureApplicationId',    # min: 15, max: 100
          Domain             => 'MyAzureDomain',           # min: 1, max: 256

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ConnectorArn = $CreateConnectorResponse->ConnectorArn;

    # Returns a L<Paws::PcaConnectorScep::CreateConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/CreateConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Private
Certificate Authority certificate authority to use with this connector.
Due to security vulnerabilities present in the SCEP protocol, we
recommend using a private CA that's dedicated for use with the
connector.

To retrieve the private CAs associated with your account, you can call
ListCertificateAuthorities
(https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html)
using the Amazon Web Services Private CA API.



=head2 ClientToken => Str

Custom string that can be used to distinguish between calls to the
CreateChallenge
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html)
action. Client tokens for C<CreateChallenge> time out after five
minutes. Therefore, if you call C<CreateChallenge> multiple times with
the same client token within five minutes, Connector for SCEP
recognizes that you are requesting only one challenge and will only
respond with one. If you change the client token for each call,
Connector for SCEP recognizes that you are requesting multiple
challenge passwords.



=head2 MobileDeviceManagement => L<Paws::PcaConnectorScep::MobileDeviceManagement>

If you don't supply a value, by default Connector for SCEP creates a
connector for general-purpose use. A general-purpose connector is
designed to work with clients or endpoints that support the SCEP
protocol, except Connector for SCEP for Microsoft Intune. With
connectors for general-purpose use, you manage SCEP challenge passwords
using Connector for SCEP. For information about considerations and
limitations with using Connector for SCEP, see Considerations and
Limitations
(https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html).

If you provide an C<IntuneConfiguration>, Connector for SCEP creates a
connector for use with Microsoft Intune, and you manage the challenge
passwords using Microsoft Intune. For more information, see Using
Connector for SCEP for Microsoft Intune
(https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html).



=head2 Tags => L<Paws::PcaConnectorScep::Tags>

The key-value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnector in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

