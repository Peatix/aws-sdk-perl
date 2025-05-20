
package Paws::Athena::CreateWorkGroup;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Athena::WorkGroupConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreateWorkGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateWorkGroup - Arguments for method CreateWorkGroup on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkGroup on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateWorkGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkGroup.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateWorkGroupOutput = $athena->CreateWorkGroup(
      Name          => 'MyWorkGroupName',
      Configuration => {
        AdditionalConfiguration => 'MyNameString',  # min: 1, max: 128; OPTIONAL
        BytesScannedCutoffPerQuery             => 1,   # min: 10000000; OPTIONAL
        CustomerContentEncryptionConfiguration => {
          KmsKey => 'MyKmsKey',                        # min: 1, max: 2048

        },    # OPTIONAL
        EnableMinimumEncryptionConfiguration => 1,    # OPTIONAL
        EnforceWorkGroupConfiguration        => 1,    # OPTIONAL
        EngineVersion                        => {
          EffectiveEngineVersion => 'MyNameString', # min: 1, max: 128; OPTIONAL
          SelectedEngineVersion  => 'MyNameString', # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        ExecutionRole => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
        IdentityCenterConfiguration => {
          EnableIdentityCenter      => 1,     # OPTIONAL
          IdentityCenterInstanceArn =>
            'MyIdentityCenterInstanceArn',    # max: 255; OPTIONAL
        },    # OPTIONAL
        PublishCloudWatchMetricsEnabled         => 1,    # OPTIONAL
        QueryResultsS3AccessGrantsConfiguration => {
          AuthenticationType =>
            'DIRECTORY_IDENTITY',    # values: DIRECTORY_IDENTITY
          EnableS3AccessGrants  => 1,    # OPTIONAL
          CreateUserLevelPrefix => 1,    # OPTIONAL
        },    # OPTIONAL
        RequesterPaysEnabled => 1,    # OPTIONAL
        ResultConfiguration  => {
          AclConfiguration => {
            S3AclOption =>
              'BUCKET_OWNER_FULL_CONTROL',   # values: BUCKET_OWNER_FULL_CONTROL

          },    # OPTIONAL
          EncryptionConfiguration => {
            EncryptionOption => 'SSE_S3',     # values: SSE_S3, SSE_KMS, CSE_KMS
            KmsKey           => 'MyString',   # OPTIONAL
          },    # OPTIONAL
          ExpectedBucketOwner => 'MyAwsAccountId',  # min: 12, max: 12; OPTIONAL
          OutputLocation      => 'MyResultOutputLocation',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyWorkGroupDescriptionString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateWorkGroup>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Athena::WorkGroupConfiguration>

Contains configuration information for creating an Athena SQL workgroup
or Spark enabled Athena workgroup. Athena SQL workgroup configuration
includes the location in Amazon S3 where query and calculation results
are stored, the encryption configuration, if any, used for encrypting
query results, whether the Amazon CloudWatch Metrics are enabled for
the workgroup, the limit for the amount of bytes scanned (cutoff) per
query, if it is specified, and whether workgroup's settings (specified
with C<EnforceWorkGroupConfiguration>) in the C<WorkGroupConfiguration>
override client-side settings. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.



=head2 Description => Str

The workgroup description.



=head2 B<REQUIRED> Name => Str

The workgroup name.



=head2 Tags => ArrayRef[L<Paws::Athena::Tag>]

A list of comma separated tags to add to the workgroup that is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkGroup in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

