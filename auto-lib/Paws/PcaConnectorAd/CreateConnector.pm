
package Paws::PcaConnectorAd::CreateConnector;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorAd::Tags');
  has VpcInformation => (is => 'ro', isa => 'Paws::PcaConnectorAd::VpcInformation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorAd::CreateConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateConnector - Arguments for method CreateConnector on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnector on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method CreateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnector.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    my $CreateConnectorResponse = $pca -connector-ad->CreateConnector(
      CertificateAuthorityArn => 'MyCertificateAuthorityArn',
      DirectoryId             => 'MyDirectoryId',
      VpcInformation          => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 11, max: 20
        ],    # min: 1, max: 4
        IpAddressType => 'IPV4',    # values: IPV4, DUALSTACK; OPTIONAL
      },
      ClientToken => 'MyClientToken',                  # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ConnectorArn = $CreateConnectorResponse->ConnectorArn;

    # Returns a L<Paws::PcaConnectorAd::CreateConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/CreateConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the certificate authority being used.



=head2 ClientToken => Str

Idempotency token.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the Active Directory.



=head2 Tags => L<Paws::PcaConnectorAd::Tags>

Metadata assigned to a connector consisting of a key-value pair.



=head2 B<REQUIRED> VpcInformation => L<Paws::PcaConnectorAd::VpcInformation>

Information about your VPC and security groups used with the connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnector in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

