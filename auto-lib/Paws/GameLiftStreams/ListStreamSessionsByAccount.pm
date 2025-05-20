
package Paws::GameLiftStreams::ListStreamSessionsByAccount;
  use Moose;
  has ExportFilesStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ExportFilesStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamSessionsByAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamsessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::ListStreamSessionsByAccountOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListStreamSessionsByAccount - Arguments for method ListStreamSessionsByAccount on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamSessionsByAccount on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method ListStreamSessionsByAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamSessionsByAccount.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $ListStreamSessionsByAccountOutput =
      $gameliftstreams->ListStreamSessionsByAccount(
      ExportFilesStatus => 'SUCCEEDED',      # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      Status            => 'ACTIVATING',     # OPTIONAL
      );

    # Results:
    my $Items     = $ListStreamSessionsByAccountOutput->Items;
    my $NextToken = $ListStreamSessionsByAccountOutput->NextToken;

 # Returns a L<Paws::GameLiftStreams::ListStreamSessionsByAccountOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/ListStreamSessionsByAccount>

=head1 ATTRIBUTES


=head2 ExportFilesStatus => Str

Filter by the exported files status. You can specify one status in each
request to retrieve only sessions that currently have that exported
files status.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"PENDING">

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

This class forms part of L<Paws>, documenting arguments for method ListStreamSessionsByAccount in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

