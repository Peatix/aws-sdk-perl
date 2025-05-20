
package Paws::IoT::UpdatePackage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DefaultVersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVersionName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has UnsetDefaultVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'unsetDefaultVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdatePackage - Arguments for method UpdatePackage on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackage on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackage.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdatePackageResponse = $iot->UpdatePackage(
      PackageName         => 'MyPackageName',
      ClientToken         => 'MyClientToken',            # OPTIONAL
      DefaultVersionName  => 'MyVersionName',            # OPTIONAL
      Description         => 'MyResourceDescription',    # OPTIONAL
      UnsetDefaultVersion => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdatePackage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 DefaultVersionName => Str

The name of the default package version.

B<Note:> You cannot name a C<defaultVersion> and set
C<unsetDefaultVersion> equal to C<true> at the same time.



=head2 Description => Str

The package description.



=head2 B<REQUIRED> PackageName => Str

The name of the target software package.



=head2 UnsetDefaultVersion => Bool

Indicates whether you want to remove the named default package version
from the software package. Set as C<true> to remove the default package
version.

B<Note:> You cannot name a C<defaultVersion> and set
C<unsetDefaultVersion> equal to C<true> at the same time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackage in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

