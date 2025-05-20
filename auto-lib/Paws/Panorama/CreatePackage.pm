
package Paws::Panorama::CreatePackage;
  use Moose;
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::CreatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreatePackage - Arguments for method CreatePackage on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackage on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method CreatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackage.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $CreatePackageResponse = $panorama->CreatePackage(
      PackageName => 'MyNodePackageName',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn             = $CreatePackageResponse->Arn;
    my $PackageId       = $CreatePackageResponse->PackageId;
    my $StorageLocation = $CreatePackageResponse->StorageLocation;

    # Returns a L<Paws::Panorama::CreatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/CreatePackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PackageName => Str

A name for the package.



=head2 Tags => L<Paws::Panorama::TagMap>

Tags for the package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackage in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

