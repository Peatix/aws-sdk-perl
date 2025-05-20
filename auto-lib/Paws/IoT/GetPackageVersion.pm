
package Paws::IoT::GetPackageVersion;
  use Moose;
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}/versions/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetPackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackageVersion - Arguments for method GetPackageVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPackageVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPackageVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPackageVersionResponse = $iot->GetPackageVersion(
      PackageName => 'MyPackageName',
      VersionName => 'MyVersionName',

    );

    # Results:
    my $Artifact             = $GetPackageVersionResponse->Artifact;
    my $Attributes           = $GetPackageVersionResponse->Attributes;
    my $CreationDate         = $GetPackageVersionResponse->CreationDate;
    my $Description          = $GetPackageVersionResponse->Description;
    my $ErrorReason          = $GetPackageVersionResponse->ErrorReason;
    my $LastModifiedDate     = $GetPackageVersionResponse->LastModifiedDate;
    my $PackageName          = $GetPackageVersionResponse->PackageName;
    my $PackageVersionArn    = $GetPackageVersionResponse->PackageVersionArn;
    my $Recipe               = $GetPackageVersionResponse->Recipe;
    my $Sbom                 = $GetPackageVersionResponse->Sbom;
    my $SbomValidationStatus = $GetPackageVersionResponse->SbomValidationStatus;
    my $Status               = $GetPackageVersionResponse->Status;
    my $VersionName          = $GetPackageVersionResponse->VersionName;

    # Returns a L<Paws::IoT::GetPackageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPackageVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PackageName => Str

The name of the associated package.



=head2 B<REQUIRED> VersionName => Str

The name of the target package version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPackageVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

