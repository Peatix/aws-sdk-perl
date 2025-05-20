
package Paws::IoT::CreatePackageVersion;
  use Moose;
  has Artifact => (is => 'ro', isa => 'Paws::IoT::PackageVersionArtifact', traits => ['NameInRequest'], request_name => 'artifact');
  has Attributes => (is => 'ro', isa => 'Paws::IoT::ResourceAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has Recipe => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipe');
  has Tags => (is => 'ro', isa => 'Paws::IoT::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'versionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}/versions/{versionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreatePackageVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePackageVersion - Arguments for method CreatePackageVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackageVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreatePackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackageVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreatePackageVersionResponse = $iot->CreatePackageVersion(
      PackageName => 'MyPackageName',
      VersionName => 'MyVersionName',
      Artifact    => {
        S3Location => {
          Bucket  => 'MyS3Bucket',     # min: 1; OPTIONAL
          Key     => 'MyS3Key',        # min: 1; OPTIONAL
          Version => 'MyS3Version',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Attributes => {
        'MyResourceAttributeKey' =>
          'MyResourceAttributeValue',    # key: min: 1, value: min: 1
      },    # OPTIONAL
      ClientToken => 'MyClientToken',             # OPTIONAL
      Description => 'MyResourceDescription',     # OPTIONAL
      Recipe      => 'MyPackageVersionRecipe',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Attributes        = $CreatePackageVersionResponse->Attributes;
    my $Description       = $CreatePackageVersionResponse->Description;
    my $ErrorReason       = $CreatePackageVersionResponse->ErrorReason;
    my $PackageName       = $CreatePackageVersionResponse->PackageName;
    my $PackageVersionArn = $CreatePackageVersionResponse->PackageVersionArn;
    my $Status            = $CreatePackageVersionResponse->Status;
    my $VersionName       = $CreatePackageVersionResponse->VersionName;

    # Returns a L<Paws::IoT::CreatePackageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreatePackageVersion>

=head1 ATTRIBUTES


=head2 Artifact => L<Paws::IoT::PackageVersionArtifact>

The various build components created during the build process such as
libraries and configuration files that make up a software package
version.



=head2 Attributes => L<Paws::IoT::ResourceAttributes>

Metadata that can be used to define a package versionE<rsquo>s
configuration. For example, the S3 file location, configuration options
that are being sent to the device or fleet.

The combined size of all the attributes on a package version is limited
to 3KB.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Description => Str

A summary of the package version being created. This can be used to
outline the package's contents or purpose.



=head2 B<REQUIRED> PackageName => Str

The name of the associated software package.



=head2 Recipe => Str

The inline job document associated with a software package version used
for a quick job deployment.



=head2 Tags => L<Paws::IoT::TagMap>

Metadata that can be used to manage the package version.



=head2 B<REQUIRED> VersionName => Str

The name of the new package version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackageVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

