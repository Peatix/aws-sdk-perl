
package Paws::ServiceCatalog::DescribeProvisioningArtifact;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IncludeProvisioningArtifactParameters => (is => 'ro', isa => 'Bool');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProductName => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactName => (is => 'ro', isa => 'Str');
  has Verbose => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisioningArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProvisioningArtifactOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningArtifact - Arguments for method DescribeProvisioningArtifact on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisioningArtifact on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeProvisioningArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisioningArtifact.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeProvisioningArtifactOutput =
      $servicecatalog->DescribeProvisioningArtifact(
      AcceptLanguage                        => 'MyAcceptLanguage',    # OPTIONAL
      IncludeProvisioningArtifactParameters => 1,                     # OPTIONAL
      ProductId                             => 'MyId',                # OPTIONAL
      ProductName                           => 'MyProductViewName',   # OPTIONAL
      ProvisioningArtifactId                => 'MyId',                # OPTIONAL
      ProvisioningArtifactName => 'MyProvisioningArtifactName',       # OPTIONAL
      Verbose                  => 1,                                  # OPTIONAL
      );

    # Results:
    my $Info = $DescribeProvisioningArtifactOutput->Info;
    my $ProvisioningArtifactDetail =
      $DescribeProvisioningArtifactOutput->ProvisioningArtifactDetail;
    my $ProvisioningArtifactParameters =
      $DescribeProvisioningArtifactOutput->ProvisioningArtifactParameters;
    my $Status = $DescribeProvisioningArtifactOutput->Status;

 # Returns a L<Paws::ServiceCatalog::DescribeProvisioningArtifactOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeProvisioningArtifact>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 IncludeProvisioningArtifactParameters => Bool

Indicates if the API call response does or does not include additional
details about the provisioning parameters.



=head2 ProductId => Str

The product identifier.



=head2 ProductName => Str

The product name.



=head2 ProvisioningArtifactId => Str

The identifier of the provisioning artifact.



=head2 ProvisioningArtifactName => Str

The provisioning artifact name.



=head2 Verbose => Bool

Indicates whether a verbose level of detail is enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisioningArtifact in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

