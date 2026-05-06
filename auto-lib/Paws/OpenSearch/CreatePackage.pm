
package Paws::OpenSearch::CreatePackage;
  use Moose;
  has EngineVersion => (is => 'ro', isa => 'Str');
  has PackageConfiguration => (is => 'ro', isa => 'Paws::OpenSearch::PackageConfiguration');
  has PackageDescription => (is => 'ro', isa => 'Str');
  has PackageEncryptionOptions => (is => 'ro', isa => 'Paws::OpenSearch::PackageEncryptionOptions');
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has PackageSource => (is => 'ro', isa => 'Paws::OpenSearch::PackageSource', required => 1);
  has PackageType => (is => 'ro', isa => 'Str', required => 1);
  has PackageVendingOptions => (is => 'ro', isa => 'Paws::OpenSearch::PackageVendingOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::CreatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreatePackage - Arguments for method CreatePackage on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackage on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method CreatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $CreatePackageResponse = $es->CreatePackage(
      PackageName   => 'MyPackageName',
      PackageSource => {
        S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
        S3Key        => 'MyS3Key',           # min: 1, max: 1024; OPTIONAL
      },
      PackageType          => 'TXT-DICTIONARY',
      EngineVersion        => 'MyEngineVersion',    # OPTIONAL
      PackageConfiguration => {
        ConfigurationRequirement =>
          'REQUIRED',    # values: REQUIRED, OPTIONAL, NONE
        LicenseRequirement => 'REQUIRED',    # values: REQUIRED, OPTIONAL, NONE
        LicenseFilepath    => 'MyLicenseFilepath',    # max: 256; OPTIONAL
        RequiresRestartForConfigurationUpdate => 1,   # OPTIONAL
      },    # OPTIONAL
      PackageDescription       => 'MyPackageDescription',    # OPTIONAL
      PackageEncryptionOptions => {
        EncryptionEnabled => 1,               # OPTIONAL
        KmsKeyIdentifier  => 'MyKmsKeyId',    # min: 1, max: 500; OPTIONAL
      },    # OPTIONAL
      PackageVendingOptions => {
        VendingEnabled => 1,    # OPTIONAL

      },    # OPTIONAL
    );

    # Results:
    my $PackageDetails = $CreatePackageResponse->PackageDetails;

    # Returns a L<Paws::OpenSearch::CreatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 EngineVersion => Str

The version of the Amazon OpenSearch Service engine for which is
compatible with the package. This can only be specified for package
type C<ZIP-PLUGIN>



=head2 PackageConfiguration => L<Paws::OpenSearch::PackageConfiguration>

The configuration parameters for the package being created.



=head2 PackageDescription => Str

Description of the package.



=head2 PackageEncryptionOptions => L<Paws::OpenSearch::PackageEncryptionOptions>

The encryption parameters for the package being created.



=head2 B<REQUIRED> PackageName => Str

Unique name for the package.



=head2 B<REQUIRED> PackageSource => L<Paws::OpenSearch::PackageSource>

The Amazon S3 location from which to import the package.



=head2 B<REQUIRED> PackageType => Str

The type of package.

Valid values are: C<"TXT-DICTIONARY">, C<"ZIP-PLUGIN">, C<"PACKAGE-LICENSE">, C<"PACKAGE-CONFIG">

=head2 PackageVendingOptions => L<Paws::OpenSearch::PackageVendingOptions>

The vending options for the package being created. They determine if
the package can be vended to other users.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackage in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

