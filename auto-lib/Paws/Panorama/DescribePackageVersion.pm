
package Paws::Panorama::DescribePackageVersion;
  use Moose;
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OwnerAccount');
  has PackageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageId', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageVersion', required => 1);
  has PatchVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'PatchVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/metadata/{PackageId}/versions/{PackageVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribePackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribePackageVersion - Arguments for method DescribePackageVersion on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackageVersion on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribePackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackageVersion.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribePackageVersionResponse = $panorama->DescribePackageVersion(
      PackageId      => 'MyNodePackageId',
      PackageVersion => 'MyNodePackageVersion',
      OwnerAccount   => 'MyPackageOwnerAccount',        # OPTIONAL
      PatchVersion   => 'MyNodePackagePatchVersion',    # OPTIONAL
    );

    # Results:
    my $IsLatestPatch     = $DescribePackageVersionResponse->IsLatestPatch;
    my $OwnerAccount      = $DescribePackageVersionResponse->OwnerAccount;
    my $PackageArn        = $DescribePackageVersionResponse->PackageArn;
    my $PackageId         = $DescribePackageVersionResponse->PackageId;
    my $PackageName       = $DescribePackageVersionResponse->PackageName;
    my $PackageVersion    = $DescribePackageVersionResponse->PackageVersion;
    my $PatchVersion      = $DescribePackageVersionResponse->PatchVersion;
    my $RegisteredTime    = $DescribePackageVersionResponse->RegisteredTime;
    my $Status            = $DescribePackageVersionResponse->Status;
    my $StatusDescription = $DescribePackageVersionResponse->StatusDescription;

    # Returns a L<Paws::Panorama::DescribePackageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribePackageVersion>

=head1 ATTRIBUTES


=head2 OwnerAccount => Str

The version's owner account.



=head2 B<REQUIRED> PackageId => Str

The version's ID.



=head2 B<REQUIRED> PackageVersion => Str

The version's version.



=head2 PatchVersion => Str

The version's patch version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackageVersion in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

