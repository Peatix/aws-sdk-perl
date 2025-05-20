
package Paws::LakeFormation::GetTemporaryGluePartitionCredentials;
  use Moose;
  has AuditContext => (is => 'ro', isa => 'Paws::LakeFormation::AuditContext');
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Partition => (is => 'ro', isa => 'Paws::LakeFormation::PartitionValueList', required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedPermissionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TableArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemporaryGluePartitionCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTemporaryGluePartitionCredentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetTemporaryGluePartitionCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetTemporaryGluePartitionCredentials - Arguments for method GetTemporaryGluePartitionCredentials on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemporaryGluePartitionCredentials on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetTemporaryGluePartitionCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemporaryGluePartitionCredentials.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetTemporaryGluePartitionCredentialsResponse =
      $lakeformation->GetTemporaryGluePartitionCredentials(
      Partition => {
        Values => [ 'MyValueString', ... ],    # min: 1

      },
      TableArn     => 'MyResourceArnString',
      AuditContext => {
        AdditionalAuditContext => 'MyAuditContextString',  # max: 2048; OPTIONAL
      },    # OPTIONAL
      DurationSeconds => 1,    # OPTIONAL
      Permissions     => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
      ],    # OPTIONAL
      SupportedPermissionTypes => [
        'COLUMN_PERMISSION',
        ... # values: COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
      ],    # OPTIONAL
      );

    # Results:
    my $AccessKeyId =
      $GetTemporaryGluePartitionCredentialsResponse->AccessKeyId;
    my $Expiration = $GetTemporaryGluePartitionCredentialsResponse->Expiration;
    my $SecretAccessKey =
      $GetTemporaryGluePartitionCredentialsResponse->SecretAccessKey;
    my $SessionToken =
      $GetTemporaryGluePartitionCredentialsResponse->SessionToken;

# Returns a L<Paws::LakeFormation::GetTemporaryGluePartitionCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetTemporaryGluePartitionCredentials>

=head1 ATTRIBUTES


=head2 AuditContext => L<Paws::LakeFormation::AuditContext>

A structure representing context to access a resource (column names,
query ID, etc).



=head2 DurationSeconds => Int

The time period, between 900 and 21,600 seconds, for the timeout of the
temporary credentials.



=head2 B<REQUIRED> Partition => L<Paws::LakeFormation::PartitionValueList>

A list of partition values identifying a single partition.



=head2 Permissions => ArrayRef[Str|Undef]

Filters the request based on the user having been granted a list of
specified permissions on the requested resource(s).



=head2 SupportedPermissionTypes => ArrayRef[Str|Undef]

A list of supported permission types for the partition. Valid values
are C<COLUMN_PERMISSION> and C<CELL_FILTER_PERMISSION>.



=head2 B<REQUIRED> TableArn => Str

The ARN of the partitions' table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemporaryGluePartitionCredentials in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

