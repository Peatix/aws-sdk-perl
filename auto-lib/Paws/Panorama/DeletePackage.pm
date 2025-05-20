
package Paws::Panorama::DeletePackage;
  use Moose;
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'ForceDelete');
  has PackageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{PackageId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DeletePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DeletePackage - Arguments for method DeletePackage on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePackage on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DeletePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePackage.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DeletePackageResponse = $panorama->DeletePackage(
      PackageId   => 'MyNodePackageId',
      ForceDelete => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DeletePackage>

=head1 ATTRIBUTES


=head2 ForceDelete => Bool

Delete the package even if it has artifacts stored in its access point.
Deletes the package's artifacts from Amazon S3.



=head2 B<REQUIRED> PackageId => Str

The package's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePackage in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

