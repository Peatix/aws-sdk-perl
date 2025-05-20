
package Paws::Finspace::CreateKxChangeset;
  use Moose;
  has ChangeRequests => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::ChangeRequest]', traits => ['NameInRequest'], request_name => 'changeRequests', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxChangeset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}/changesets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxChangesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxChangeset - Arguments for method CreateKxChangeset on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxChangeset on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxChangeset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxChangeset.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxChangesetResponse = $finspace->CreateKxChangeset(
      ChangeRequests => [
        {
          ChangeType => 'PUT',         # values: PUT, DELETE
          DbPath     => 'MyDbPath',    # min: 1, max: 1025
          S3Path     => 'MyS3Path',    # min: 9, max: 1093; OPTIONAL
        },
        ...
      ],
      ClientToken   => 'MyClientTokenString',
      DatabaseName  => 'MyDatabaseName',
      EnvironmentId => 'MyEnvironmentId',

    );

    # Results:
    my $ChangeRequests   = $CreateKxChangesetResponse->ChangeRequests;
    my $ChangesetId      = $CreateKxChangesetResponse->ChangesetId;
    my $CreatedTimestamp = $CreateKxChangesetResponse->CreatedTimestamp;
    my $DatabaseName     = $CreateKxChangesetResponse->DatabaseName;
    my $EnvironmentId    = $CreateKxChangesetResponse->EnvironmentId;
    my $ErrorInfo        = $CreateKxChangesetResponse->ErrorInfo;
    my $LastModifiedTimestamp =
      $CreateKxChangesetResponse->LastModifiedTimestamp;
    my $Status = $CreateKxChangesetResponse->Status;

    # Returns a L<Paws::Finspace::CreateKxChangesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxChangeset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeRequests => ArrayRef[L<Paws::Finspace::ChangeRequest>]

A list of change request objects that are run in order. A change
request object consists of C<changeType> , C<s3Path>, and C<dbPath>. A
changeType can have the following values:

=over

=item *

PUT E<ndash> Adds or updates files in a database.

=item *

DELETE E<ndash> Deletes files in a database.

=back

All the change requests require a mandatory C<dbPath> attribute that
defines the path within the database directory. All database paths must
start with a leading / and end with a trailing /. The C<s3Path>
attribute defines the s3 source file path and is required for a PUT
change type. The C<s3path> must end with a trailing / if it is a
directory and must end without a trailing / if it is a file.

Here are few examples of how you can use the change request object:

=over

=item 1.

This request adds a single sym file at database root location.

C<{ "changeType": "PUT", "s3Path":"s3://bucket/db/sym", "dbPath":"/"}>

=item 2.

This request adds files in the given C<s3Path> under the 2020.01.02
partition of the database.

C<{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
"dbPath":"/2020.01.02/"}>

=item 3.

This request adds files in the given C<s3Path> under the I<taq> table
partition of the database.

C<[ { "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
"dbPath":"/2020.01.02/taq/"}]>

=item 4.

This request deletes the 2020.01.02 partition of the database.

C<[{ "changeType": "DELETE", "dbPath": "/2020.01.02/"} ]>

=item 5.

The I<DELETE> request allows you to delete the existing files under the
2020.01.02 partition of the database, and the I<PUT> request adds a new
taq table under it.

C<[ {"changeType": "DELETE", "dbPath":"/2020.01.02/"}, {"changeType":
"PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
"dbPath":"/2020.01.02/taq/"}]>

=back




=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatabaseName => Str

The name of the kdb database.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier of the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxChangeset in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

