
package Paws::OpenSearch::UpdatePackage;
  use Moose;
  has CommitMessage => (is => 'ro', isa => 'Str');
  has PackageConfiguration => (is => 'ro', isa => 'Paws::OpenSearch::PackageConfiguration');
  has PackageDescription => (is => 'ro', isa => 'Str');
  has PackageEncryptionOptions => (is => 'ro', isa => 'Paws::OpenSearch::PackageEncryptionOptions');
  has PackageID => (is => 'ro', isa => 'Str', required => 1);
  has PackageSource => (is => 'ro', isa => 'Paws::OpenSearch::PackageSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdatePackage - Arguments for method UpdatePackage on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackage on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdatePackageResponse = $es->UpdatePackage(
      PackageID     => 'MyPackageID',
      PackageSource => {
        S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
        S3Key        => 'MyS3Key',           # min: 1, max: 1024; OPTIONAL
      },
      CommitMessage        => 'MyCommitMessage',    # OPTIONAL
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
    );

    # Results:
    my $PackageDetails = $UpdatePackageResponse->PackageDetails;

    # Returns a L<Paws::OpenSearch::UpdatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 CommitMessage => Str

Commit message for the updated file, which is shown as part of
C<GetPackageVersionHistoryResponse>.



=head2 PackageConfiguration => L<Paws::OpenSearch::PackageConfiguration>

The updated configuration details for a package.



=head2 PackageDescription => Str

A new description of the package.



=head2 PackageEncryptionOptions => L<Paws::OpenSearch::PackageEncryptionOptions>

Encryption options for a package.



=head2 B<REQUIRED> PackageID => Str

The unique identifier for the package.



=head2 B<REQUIRED> PackageSource => L<Paws::OpenSearch::PackageSource>

Amazon S3 bucket and key for the package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackage in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

