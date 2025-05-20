
package Paws::Panorama::DescribePackage;
  use Moose;
  has PackageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/metadata/{PackageId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribePackage - Arguments for method DescribePackage on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackage on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackage.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribePackageResponse = $panorama->DescribePackage(
      PackageId => 'MyNodePackageId',

    );

    # Results:
    my $Arn         = $DescribePackageResponse->Arn;
    my $CreatedTime = $DescribePackageResponse->CreatedTime;
    my $PackageId   = $DescribePackageResponse->PackageId;
    my $PackageName = $DescribePackageResponse->PackageName;
    my $ReadAccessPrincipalArns =
      $DescribePackageResponse->ReadAccessPrincipalArns;
    my $StorageLocation = $DescribePackageResponse->StorageLocation;
    my $Tags            = $DescribePackageResponse->Tags;
    my $WriteAccessPrincipalArns =
      $DescribePackageResponse->WriteAccessPrincipalArns;

    # Returns a L<Paws::Panorama::DescribePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribePackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PackageId => Str

The package's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackage in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

