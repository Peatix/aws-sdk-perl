
package Paws::GameLiftStreams::ListStreamSessions;
  use Moose;
  has ExportFilesStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ExportFilesStatus');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamSessions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/streamsessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::ListStreamSessionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListStreamSessions - Arguments for method ListStreamSessions on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamSessions on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method ListStreamSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamSessions.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $ListStreamSessionsOutput = $gameliftstreams->ListStreamSessions(
      Identifier        => 'MyIdentifier',
      ExportFilesStatus => 'SUCCEEDED',      # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      Status            => 'ACTIVATING',     # OPTIONAL
    );

    # Results:
    my $Items     = $ListStreamSessionsOutput->Items;
    my $NextToken = $ListStreamSessionsOutput->NextToken;

    # Returns a L<Paws::GameLiftStreams::ListStreamSessionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/ListStreamSessions>

=head1 ATTRIBUTES


=head2 ExportFilesStatus => Str

Filter by the exported files status. You can specify one status in each
request to retrieve only sessions that currently have that exported
files status.

Exported files can be in one of the following states:

=over

=item *

B<SUCCEEDED>: The exported files are successfully stored in S3 bucket.

=item *

B<FAILED>: The session ended but Amazon GameLift Streams couldn't
collect and upload the to S3.

=item *

B<PENDING>: Either the stream session is still in progress, or
uploading the exported files to the S3 bucket is in progress.

=back


Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"PENDING">

=head2 B<REQUIRED> Identifier => Str

The unique identifier of a Amazon GameLift Streams stream group to
retrieve the stream session for. You can use either the stream group ID
or the Amazon Resource Name (ARN).



=head2 MaxResults => Int

The number of results to return. Use this parameter with C<NextToken>
to return results in sequential pages. Default value is C<25>.



=head2 NextToken => Str

The token that marks the start of the next set of results. Use this
token when you retrieve results as sequential pages. To get the first
page of results, omit a token value. To get the remaining pages,
provide the token returned with the previous result set.



=head2 Status => Str

Filter by the stream session status. You can specify one status in each
request to retrieve only sessions that are currently in that status.

Valid values are: C<"ACTIVATING">, C<"ACTIVE">, C<"CONNECTED">, C<"PENDING_CLIENT_RECONNECTION">, C<"RECONNECTING">, C<"TERMINATING">, C<"TERMINATED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamSessions in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

