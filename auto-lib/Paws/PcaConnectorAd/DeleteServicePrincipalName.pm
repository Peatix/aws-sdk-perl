
package Paws::PcaConnectorAd::DeleteServicePrincipalName;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorArn', required => 1);
  has DirectoryRegistrationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DirectoryRegistrationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServicePrincipalName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::DeleteServicePrincipalName - Arguments for method DeleteServicePrincipalName on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServicePrincipalName on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method DeleteServicePrincipalName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServicePrincipalName.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    $pca -connector-ad->DeleteServicePrincipalName(
      ConnectorArn             => 'MyConnectorArn',
      DirectoryRegistrationArn => 'MyDirectoryRegistrationArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/DeleteServicePrincipalName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateConnector
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html).



=head2 B<REQUIRED> DirectoryRegistrationArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateDirectoryRegistration
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServicePrincipalName in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

