
package Paws::IoT::AssociateSbomWithPackageVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has Sbom => (is => 'ro', isa => 'Paws::IoT::Sbom', traits => ['NameInRequest'], request_name => 'sbom', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateSbomWithPackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}/versions/{versionName}/sbom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::AssociateSbomWithPackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssociateSbomWithPackageVersion - Arguments for method AssociateSbomWithPackageVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateSbomWithPackageVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AssociateSbomWithPackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateSbomWithPackageVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AssociateSbomWithPackageVersionResponse =
      $iot->AssociateSbomWithPackageVersion(
      PackageName => 'MyPackageName',
      Sbom        => {
        S3Location => {
          Bucket  => 'MyS3Bucket',     # min: 1; OPTIONAL
          Key     => 'MyS3Key',        # min: 1; OPTIONAL
          Version => 'MyS3Version',    # OPTIONAL
        },    # OPTIONAL
      },
      VersionName => 'MyVersionName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $PackageName = $AssociateSbomWithPackageVersionResponse->PackageName;
    my $Sbom        = $AssociateSbomWithPackageVersionResponse->Sbom;
    my $SbomValidationStatus =
      $AssociateSbomWithPackageVersionResponse->SbomValidationStatus;
    my $VersionName = $AssociateSbomWithPackageVersionResponse->VersionName;

    # Returns a L<Paws::IoT::AssociateSbomWithPackageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AssociateSbomWithPackageVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> PackageName => Str

The name of the new software package.



=head2 B<REQUIRED> Sbom => L<Paws::IoT::Sbom>





=head2 B<REQUIRED> VersionName => Str

The name of the new package version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateSbomWithPackageVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

