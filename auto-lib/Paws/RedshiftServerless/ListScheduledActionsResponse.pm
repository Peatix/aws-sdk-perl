
package Paws::RedshiftServerless::ListScheduledActionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ScheduledActions => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::ScheduledActionAssociation]', traits => ['NameInRequest'], request_name => 'scheduledActions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListScheduledActionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 ScheduledActions => ArrayRef[L<Paws::RedshiftServerless::ScheduledActionAssociation>]

All of the returned scheduled action association objects.


=head2 _request_id => Str


=cut

1;