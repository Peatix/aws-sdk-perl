
package Paws::S3Control::CreateJob;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ConfirmationRequired => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Manifest => (is => 'ro', isa => 'Paws::S3Control::JobManifest');
  has ManifestGenerator => (is => 'ro', isa => 'Paws::S3Control::JobManifestGenerator');
  has Operation => (is => 'ro', isa => 'Paws::S3Control::JobOperation', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Report => (is => 'ro', isa => 'Paws::S3Control::JobReport', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::S3Tag]');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::CreateJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateJobRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateJob - Arguments for method CreateJob on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $CreateJobResult = $s3 -control->CreateJob(
      AccountId          => 'MyAccountId',
      ClientRequestToken => 'MyNonEmptyMaxLength64String',
      Operation          => {
        LambdaInvoke => {
          FunctionArn => 'MyFunctionArnString',    # min: 1, max: 1024; OPTIONAL
          InvocationSchemaVersion =>
            'MyNonEmptyMaxLength64String',         # min: 1, max: 64
          UserArguments => {
            'MyNonEmptyMaxLength64String' =>
              'MyMaxLength1024String',  # key: min: 1, max: 64, value: max: 1024
          },    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        S3DeleteObjectTagging => {

        },    # OPTIONAL
        S3InitiateRestoreObject => {
          ExpirationInDays => 1,         # OPTIONAL
          GlacierJobTier   => 'BULK',    # values: BULK, STANDARD; OPTIONAL
        },    # OPTIONAL
        S3PutObjectAcl => {
          AccessControlPolicy => {
            AccessControlList => {
              Owner => {
                DisplayName =>
                  'MyNonEmptyMaxLength1024String', # min: 1, max: 1024; OPTIONAL
                ID =>
                  'MyNonEmptyMaxLength1024String', # min: 1, max: 1024; OPTIONAL
              },
              Grants => [
                {
                  Grantee => {
                    DisplayName => 'MyNonEmptyMaxLength1024String'
                    ,          # min: 1, max: 1024; OPTIONAL
                    Identifier => 'MyNonEmptyMaxLength1024String'
                    ,          # min: 1, max: 1024; OPTIONAL
                    TypeIdentifier =>
                      'id',    # values: id, emailAddress, uri; OPTIONAL
                  },    # OPTIONAL
                  Permission => 'FULL_CONTROL'
                  , # values: FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP; OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            CannedAccessControlList => 'private'
            , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        S3PutObjectCopy => {
          AccessControlGrants => [
            {
              Grantee => {
                DisplayName =>
                  'MyNonEmptyMaxLength1024String', # min: 1, max: 1024; OPTIONAL
                Identifier =>
                  'MyNonEmptyMaxLength1024String', # min: 1, max: 1024; OPTIONAL
                TypeIdentifier =>
                  'id',    # values: id, emailAddress, uri; OPTIONAL
              },    # OPTIONAL
              Permission => 'FULL_CONTROL'
              , # values: FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          BucketKeyEnabled        => 1,          # OPTIONAL
          CannedAccessControlList => 'private'
          , # values: private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control; OPTIONAL
          ChecksumAlgorithm =>
            'CRC32',  # values: CRC32, CRC32C, SHA1, SHA256, CRC64NVME; OPTIONAL
          MetadataDirective       => 'COPY',   # values: COPY, REPLACE; OPTIONAL
          ModifiedSinceConstraint => '1970-01-01T01:00:00',    # OPTIONAL
          NewObjectMetadata       => {
            CacheControl =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            ContentDisposition =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            ContentEncoding =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            ContentLanguage =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            ContentLength => 1,                   # OPTIONAL
            ContentMD5    =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            ContentType =>
              'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
            HttpExpiresDate  => '1970-01-01T01:00:00',    # OPTIONAL
            RequesterCharged => 1,                        # OPTIONAL
            SSEAlgorithm     => 'AES256',    # values: AES256, KMS; OPTIONAL
            UserMetadata     => {
              'MyNonEmptyMaxLength1024String' => 'MyMaxLength1024String'
              ,    # key: min: 1, max: 1024; OPTIONAL, value: max: 1024
            },    # max: 8192; OPTIONAL
          },    # OPTIONAL
          NewObjectTagging => [
            {
              Key   => 'MyTagKeyString',      # min: 1, max: 128
              Value => 'MyTagValueString',    # max: 256

            },
            ...
          ],    # OPTIONAL
          ObjectLockLegalHoldStatus => 'OFF',    # values: OFF, ON; OPTIONAL
          ObjectLockMode            =>
            'COMPLIANCE',    # values: COMPLIANCE, GOVERNANCE; OPTIONAL
          ObjectLockRetainUntilDate => '1970-01-01T01:00:00',    # OPTIONAL
          RedirectLocation          =>
            'MyNonEmptyMaxLength2048String',    # min: 1, max: 2048; OPTIONAL
          RequesterPays  => 1,                     # OPTIONAL
          SSEAwsKmsKeyId => 'MyKmsKeyArnString',   # min: 1, max: 2000; OPTIONAL
          StorageClass   => 'STANDARD'
          , # values: STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR; OPTIONAL
          TargetKeyPrefix =>
            'MyNonEmptyMaxLength1024String',    # min: 1, max: 1024; OPTIONAL
          TargetResource => 'MyS3RegionalOrS3ExpressBucketArnString'
          ,                                     # min: 1, max: 128; OPTIONAL
          UnModifiedSinceConstraint => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        S3PutObjectLegalHold => {
          LegalHold => {
            Status => 'OFF',    # values: OFF, ON; OPTIONAL

          },

        },    # OPTIONAL
        S3PutObjectRetention => {
          Retention => {
            Mode => 'COMPLIANCE',    # values: COMPLIANCE, GOVERNANCE; OPTIONAL
            RetainUntilDate => '1970-01-01T01:00:00',    # OPTIONAL
          },
          BypassGovernanceRetention => 1,                # OPTIONAL
        },    # OPTIONAL
        S3PutObjectTagging => {
          TagSet => [
            {
              Key   => 'MyTagKeyString',      # min: 1, max: 128
              Value => 'MyTagValueString',    # max: 256

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        S3ReplicateObject => {

        },    # OPTIONAL
      },
      Priority => 1,
      Report   => {
        Enabled => 1,                        # OPTIONAL
        Bucket  => 'MyS3BucketArnString',    # min: 1, max: 128; OPTIONAL
        Format => 'Report_CSV_20180820', # values: Report_CSV_20180820; OPTIONAL
        Prefix => 'MyReportPrefixString',    # min: 1, max: 512; OPTIONAL
        ReportScope => 'AllTasks', # values: AllTasks, FailedTasksOnly; OPTIONAL
      },
      RoleArn              => 'MyIAMRoleArn',
      ConfirmationRequired => 1,                                 # OPTIONAL
      Description          => 'MyNonEmptyMaxLength256String',    # OPTIONAL
      Manifest             => {
        Location => {
          ETag => 'MyNonEmptyMaxLength1024String', # min: 1, max: 1024; OPTIONAL
          ObjectArn       => 'MyS3KeyArnString',    # min: 1, max: 2000
          ObjectVersionId =>
            'MyS3ObjectVersionId',    # min: 1, max: 2000; OPTIONAL
        },
        Spec => {
          Format => 'S3BatchOperations_CSV_20180820'
          , # values: S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
          Fields => [
            'Ignore', ...    # values: Ignore, Bucket, Key, VersionId
          ],    # OPTIONAL
        },

      },    # OPTIONAL
      ManifestGenerator => {
        S3JobManifestGenerator => {
          EnableManifestOutput => 1,                # OPTIONAL
          SourceBucket => 'MyS3BucketArnString',    # min: 1, max: 128; OPTIONAL
          ExpectedBucketOwner => 'MyAccountId',     # max: 64
          Filter              => {
            CreatedAfter           => '1970-01-01T01:00:00',    # OPTIONAL
            CreatedBefore          => '1970-01-01T01:00:00',    # OPTIONAL
            EligibleForReplication => 1,                        # OPTIONAL
            KeyNameConstraint      => {
              MatchAnyPrefix => [
                'MyNonEmptyMaxLength1024String',
                ...    # min: 1, max: 1024; OPTIONAL
              ],    # OPTIONAL
              MatchAnySubstring => [
                'MyNonEmptyMaxLength1024String',
                ...    # min: 1, max: 1024; OPTIONAL
              ],    # OPTIONAL
              MatchAnySuffix => [
                'MyNonEmptyMaxLength1024String',
                ...    # min: 1, max: 1024; OPTIONAL
              ],    # OPTIONAL
            },    # OPTIONAL
            MatchAnyStorageClass => [
              'STANDARD',
              ... # values: STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR; OPTIONAL
            ],    # OPTIONAL
            ObjectReplicationStatuses => [
              'COMPLETED', ...    # values: COMPLETED, FAILED, REPLICA, NONE
            ],    # OPTIONAL
            ObjectSizeGreaterThanBytes => 1,    # OPTIONAL
            ObjectSizeLessThanBytes    => 1,    # OPTIONAL
          },    # OPTIONAL
          ManifestOutputLocation => {
            Bucket => 'MyS3BucketArnString',    # min: 1, max: 128; OPTIONAL
            ManifestFormat => 'S3InventoryReport_CSV_20211130'
            ,    # values: S3InventoryReport_CSV_20211130
            ExpectedManifestBucketOwner => 'MyAccountId',    # max: 64
            ManifestEncryption          => {
              SSEKMS => {
                KeyId => 'MyKmsKeyArnString',    # min: 1, max: 2000; OPTIONAL

              },    # OPTIONAL
              SSES3 => {

              },    # OPTIONAL
            },    # OPTIONAL
            ManifestPrefix =>
              'MyManifestPrefixString',    # min: 1, max: 512; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 128
          Value => 'MyTagValueString',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $JobId = $CreateJobResult->JobId;

    # Returns a L<Paws::S3Control::CreateJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID that creates the job.



=head2 B<REQUIRED> ClientRequestToken => Str

An idempotency token to ensure that you don't accidentally submit the
same request twice. You can use any string up to the maximum length.



=head2 ConfirmationRequired => Bool

Indicates whether confirmation is required before Amazon S3 runs the
job. Confirmation is only required for jobs created through the Amazon
S3 console.



=head2 Description => Str

A description for this job. You can use any string within the permitted
length. Descriptions don't need to be unique and can be used for
multiple jobs.



=head2 Manifest => L<Paws::S3Control::JobManifest>

Configuration parameters for the manifest.



=head2 ManifestGenerator => L<Paws::S3Control::JobManifestGenerator>

The attribute container for the ManifestGenerator details. Jobs must be
created with either a manifest file or a ManifestGenerator, but not
both.



=head2 B<REQUIRED> Operation => L<Paws::S3Control::JobOperation>

The action that you want this job to perform on every object listed in
the manifest. For more information about the available actions, see
Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html)
in the I<Amazon S3 User Guide>.



=head2 B<REQUIRED> Priority => Int

The numerical priority for this job. Higher numbers indicate higher
priority.



=head2 B<REQUIRED> Report => L<Paws::S3Control::JobReport>

Configuration parameters for the optional job-completion report.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) for the Identity and Access Management
(IAM) role that Batch Operations will use to run this job's action on
every object in the manifest.



=head2 Tags => ArrayRef[L<Paws::S3Control::S3Tag>]

A set of tags to associate with the S3 Batch Operations job. This is an
optional parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

