
package Paws::LakeFormation::GetTemporaryGlueTableCredentials;
  use Moose;
  has AuditContext => (is => 'ro', isa => 'Paws::LakeFormation::AuditContext');
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QuerySessionContext => (is => 'ro', isa => 'Paws::LakeFormation::QuerySessionContext');
  has S3Path => (is => 'ro', isa => 'Str');
  has SupportedPermissionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TableArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemporaryGlueTableCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTemporaryGlueTableCredentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetTemporaryGlueTableCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetTemporaryGlueTableCredentials - Arguments for method GetTemporaryGlueTableCredentials on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemporaryGlueTableCredentials on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetTemporaryGlueTableCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemporaryGlueTableCredentials.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetTemporaryGlueTableCredentialsResponse =
      $lakeformation->GetTemporaryGlueTableCredentials(
      TableArn     => 'MyResourceArnString',
      AuditContext => {
        AdditionalAuditContext => 'MyAuditContextString',  # max: 2048; OPTIONAL
      },    # OPTIONAL
      DurationSeconds => 1,    # OPTIONAL
      Permissions     => [
        'ALL',
        ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, CREATE_LF_TAG, ASSOCIATE, GRANT_WITH_LF_TAG_EXPRESSION, CREATE_LF_TAG_EXPRESSION, CREATE_CATALOG, SUPER_USER
      ],    # OPTIONAL
      QuerySessionContext => {
        AdditionalContext => {
          'MyContextKey' =>
            'MyContextValue',    # key: min: 1, max: 128, value: max: 256
        },    # OPTIONAL
        ClusterId            => 'MyNullableString', # OPTIONAL
        QueryAuthorizationId => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryId              => 'MyHashString',     # min: 1, max: 255; OPTIONAL
        QueryStartTime       => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      S3Path                   => 'MyPathString',    # OPTIONAL
      SupportedPermissionTypes => [
        'COLUMN_PERMISSION',
        ... # values: COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
      ],    # OPTIONAL
      );

    # Results:
    my $AccessKeyId = $GetTemporaryGlueTableCredentialsResponse->AccessKeyId;
    my $Expiration  = $GetTemporaryGlueTableCredentialsResponse->Expiration;
    my $SecretAccessKey =
      $GetTemporaryGlueTableCredentialsResponse->SecretAccessKey;
    my $SessionToken = $GetTemporaryGlueTableCredentialsResponse->SessionToken;
    my $VendedS3Path = $GetTemporaryGlueTableCredentialsResponse->VendedS3Path;

# Returns a L<Paws::LakeFormation::GetTemporaryGlueTableCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetTemporaryGlueTableCredentials>

=head1 ATTRIBUTES


=head2 AuditContext => L<Paws::LakeFormation::AuditContext>

A structure representing context to access a resource (column names,
query ID, etc).



=head2 DurationSeconds => Int

The time period, between 900 and 21,600 seconds, for the timeout of the
temporary credentials.



=head2 Permissions => ArrayRef[Str|Undef]

Filters the request based on the user having been granted a list of
specified permissions on the requested resource(s).



=head2 QuerySessionContext => L<Paws::LakeFormation::QuerySessionContext>

A structure used as a protocol between query engines and Lake Formation
or Glue. Contains both a Lake Formation generated authorization
identifier and information from the request's authorization context.



=head2 S3Path => Str

The Amazon S3 path for the table.



=head2 SupportedPermissionTypes => ArrayRef[Str|Undef]

A list of supported permission types for the table. Valid values are
C<COLUMN_PERMISSION> and C<CELL_FILTER_PERMISSION>.



=head2 B<REQUIRED> TableArn => Str

The ARN identifying a table in the Data Catalog for the temporary
credentials request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemporaryGlueTableCredentials in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

