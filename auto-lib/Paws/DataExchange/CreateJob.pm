
package Paws::DataExchange::CreateJob;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::DataExchange::RequestDetails', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateJob - Arguments for method CreateJob on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $CreateJobResponse = $dataexchange->CreateJob(
      Details => {
        CreateS3DataAccessFromS3Bucket => {
          AssetSource => {
            Bucket         => 'My__string',
            KeyPrefixes    => [ 'My__string', ... ],    # OPTIONAL
            Keys           => [ 'My__string', ... ],    # OPTIONAL
            KmsKeysToGrant => [
              {
                KmsKeyArn => 'MyKmsKeyArn',             # min: 1, max: 2048

              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },
          DataSetId  => 'MyId',
          RevisionId => 'MyId',

        },    # OPTIONAL
        ExportAssetToSignedUrl => {
          AssetId    => 'MyId',
          DataSetId  => 'MyId',
          RevisionId => 'MyId',

        },    # OPTIONAL
        ExportAssetsToS3 => {
          AssetDestinations => [
            {
              AssetId => 'MyId',
              Bucket  => 'My__string',
              Key     => 'My__string',
            },
            ...
          ],
          DataSetId  => 'MyId',
          RevisionId => 'MyId',
          Encryption => {
            Type      => 'aws:kms',      # values: aws:kms, AES256
            KmsKeyArn => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        ExportRevisionsToS3 => {
          DataSetId            => 'MyId',
          RevisionDestinations => [
            {
              Bucket     => 'My__string',
              RevisionId => 'MyId',
              KeyPattern => 'My__string',
            },
            ...
          ],
          Encryption => {
            Type      => 'aws:kms',      # values: aws:kms, AES256
            KmsKeyArn => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        ImportAssetFromApiGatewayApi => {
          ApiId                   => 'My__string',
          ApiName                 => 'My__string',
          ApiSpecificationMd5Hash =>
            'My__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093'
          ,                                        # min: 24, max: 24
          DataSetId      => 'MyId',
          ProtocolType   => 'REST',                # values: REST
          RevisionId     => 'MyId',
          Stage          => 'My__string',
          ApiDescription => 'MyApiDescription',    # OPTIONAL
          ApiKey         => 'My__string',
        },    # OPTIONAL
        ImportAssetFromSignedUrl => {
          AssetName => 'MyAssetName',
          DataSetId => 'MyId',
          Md5Hash   => 'My__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093'
          ,    # min: 24, max: 24
          RevisionId => 'MyId',

        },    # OPTIONAL
        ImportAssetsFromLakeFormationTagPolicy => {
          CatalogId  => 'MyAwsAccountId',    # min: 12, max: 12
          DataSetId  => 'MyId',
          RevisionId => 'MyId',
          RoleArn    => 'MyRoleArn',
          Database   => {
            Expression => [
              {
                TagKey    => 'MyString',
                TagValues => [ 'MyString', ... ],

              },
              ...
            ],
            Permissions => [
              'DESCRIBE',
              ...    # values: DESCRIBE
            ],

          },    # OPTIONAL
          Table => {
            Expression => [
              {
                TagKey    => 'MyString',
                TagValues => [ 'MyString', ... ],

              },
              ...
            ],
            Permissions => [
              'DESCRIBE',
              ...    # values: DESCRIBE, SELECT
            ],

          },    # OPTIONAL
        },    # OPTIONAL
        ImportAssetsFromRedshiftDataShares => {
          AssetSources => [
            {
              DataShareArn => 'My__string',

            },
            ...
          ],
          DataSetId  => 'MyId',
          RevisionId => 'MyId',

        },    # OPTIONAL
        ImportAssetsFromS3 => {
          AssetSources => [
            {
              Bucket => 'My__string',
              Key    => 'My__string',

            },
            ...
          ],
          DataSetId  => 'MyId',
          RevisionId => 'MyId',

        },    # OPTIONAL
      },
      Type => 'IMPORT_ASSETS_FROM_S3',

    );

    # Results:
    my $Arn       = $CreateJobResponse->Arn;
    my $CreatedAt = $CreateJobResponse->CreatedAt;
    my $Details   = $CreateJobResponse->Details;
    my $Errors    = $CreateJobResponse->Errors;
    my $Id        = $CreateJobResponse->Id;
    my $State     = $CreateJobResponse->State;
    my $Type      = $CreateJobResponse->Type;
    my $UpdatedAt = $CreateJobResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/CreateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Details => L<Paws::DataExchange::RequestDetails>

The details for the CreateJob request.



=head2 B<REQUIRED> Type => Str

The type of job to be created.

Valid values are: C<"IMPORT_ASSETS_FROM_S3">, C<"IMPORT_ASSET_FROM_SIGNED_URL">, C<"EXPORT_ASSETS_TO_S3">, C<"EXPORT_ASSET_TO_SIGNED_URL">, C<"EXPORT_REVISIONS_TO_S3">, C<"IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES">, C<"IMPORT_ASSET_FROM_API_GATEWAY_API">, C<"CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET">, C<"IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

