
package Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfiguration;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLakeFormationIdentityCenterConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeLakeFormationIdentityCenterConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfiguration - Arguments for method DescribeLakeFormationIdentityCenterConfiguration on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLakeFormationIdentityCenterConfiguration on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DescribeLakeFormationIdentityCenterConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLakeFormationIdentityCenterConfiguration.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DescribeLakeFormationIdentityCenterConfigurationResponse =
      $lakeformation->DescribeLakeFormationIdentityCenterConfiguration(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

    # Results:
    my $ApplicationArn =
      $DescribeLakeFormationIdentityCenterConfigurationResponse->ApplicationArn;
    my $CatalogId =
      $DescribeLakeFormationIdentityCenterConfigurationResponse->CatalogId;
    my $ExternalFiltering =
      $DescribeLakeFormationIdentityCenterConfigurationResponse
      ->ExternalFiltering;
    my $InstanceArn =
      $DescribeLakeFormationIdentityCenterConfigurationResponse->InstanceArn;
    my $ResourceShare =
      $DescribeLakeFormationIdentityCenterConfigurationResponse->ResourceShare;
    my $ShareRecipients =
      $DescribeLakeFormationIdentityCenterConfigurationResponse
      ->ShareRecipients;

# Returns a L<Paws::LakeFormation::DescribeLakeFormationIdentityCenterConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DescribeLakeFormationIdentityCenterConfiguration>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLakeFormationIdentityCenterConfiguration in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

