
package Paws::IoT::GetPackage;
  use Moose;
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetPackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackage - Arguments for method GetPackage on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPackage on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPackage.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPackageResponse = $iot->GetPackage(
      PackageName => 'MyPackageName',

    );

    # Results:
    my $CreationDate       = $GetPackageResponse->CreationDate;
    my $DefaultVersionName = $GetPackageResponse->DefaultVersionName;
    my $Description        = $GetPackageResponse->Description;
    my $LastModifiedDate   = $GetPackageResponse->LastModifiedDate;
    my $PackageArn         = $GetPackageResponse->PackageArn;
    my $PackageName        = $GetPackageResponse->PackageName;

    # Returns a L<Paws::IoT::GetPackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PackageName => Str

The name of the target software package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPackage in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

