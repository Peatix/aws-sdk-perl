
package Paws::CloudWatchEvents::ListReplays;
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReplays');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListReplaysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListReplays - Arguments for method ListReplays on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReplays on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListReplays.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReplays.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListReplaysResponse = $events->ListReplays(
      EventSourceArn => 'MyArchiveArn',    # OPTIONAL
      Limit          => 1,                 # OPTIONAL
      NamePrefix     => 'MyReplayName',    # OPTIONAL
      NextToken      => 'MyNextToken',     # OPTIONAL
      State          => 'STARTING',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListReplaysResponse->NextToken;
    my $Replays   = $ListReplaysResponse->Replays;

    # Returns a L<Paws::CloudWatchEvents::ListReplaysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The ARN of the archive from which the events are replayed.



=head2 Limit => Int

The maximum number of replays to retrieve.



=head2 NamePrefix => Str

A name prefix to filter the replays returned. Only replays with name
that match the prefix are returned.



=head2 NextToken => Str

The token returned by a previous call, which you can use to retrieve
the next set of results.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.



=head2 State => Str

The state of the replay.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"CANCELLING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReplays in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

