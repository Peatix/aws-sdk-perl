
package Paws::IoT::CreatePackage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoT::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePackage - Arguments for method CreatePackage on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackage on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackage.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreatePackageResponse = $iot->CreatePackage(
      PackageName => 'MyPackageName',
      ClientToken => 'MyClientToken',            # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Description = $CreatePackageResponse->Description;
    my $PackageArn  = $CreatePackageResponse->PackageArn;
    my $PackageName = $CreatePackageResponse->PackageName;

    # Returns a L<Paws::IoT::CreatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreatePackage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Description => Str

A summary of the package being created. This can be used to outline the
package's contents or purpose.



=head2 B<REQUIRED> PackageName => Str

The name of the new software package.



=head2 Tags => L<Paws::IoT::TagMap>

Metadata that can be used to manage the package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackage in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

