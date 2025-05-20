
package Paws::Panorama::RegisterPackageVersion;
  use Moose;
  has MarkLatest => (is => 'ro', isa => 'Bool');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has PackageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageId', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageVersion', required => 1);
  has PatchVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PatchVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterPackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::RegisterPackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::RegisterPackageVersion - Arguments for method RegisterPackageVersion on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterPackageVersion on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method RegisterPackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterPackageVersion.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $RegisterPackageVersionResponse = $panorama->RegisterPackageVersion(
      PackageId      => 'MyNodePackageId',
      PackageVersion => 'MyNodePackageVersion',
      PatchVersion   => 'MyNodePackagePatchVersion',
      MarkLatest     => 1,                             # OPTIONAL
      OwnerAccount   => 'MyPackageOwnerAccount',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/RegisterPackageVersion>

=head1 ATTRIBUTES


=head2 MarkLatest => Bool

Whether to mark the new version as the latest version.



=head2 OwnerAccount => Str

An owner account.



=head2 B<REQUIRED> PackageId => Str

A package ID.



=head2 B<REQUIRED> PackageVersion => Str

A package version.



=head2 B<REQUIRED> PatchVersion => Str

A patch version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterPackageVersion in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

