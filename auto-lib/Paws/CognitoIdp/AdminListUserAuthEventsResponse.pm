
package Paws::CognitoIdp::AdminListUserAuthEventsResponse;
  use Moose;
  has AuthEvents => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AuthEventType]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListUserAuthEventsResponse

=head1 ATTRIBUTES


=head2 AuthEvents => ArrayRef[L<Paws::CognitoIdp::AuthEventType>]

The response object. It includes the C<EventID>, C<EventType>,
C<CreationDate>, C<EventRisk>, and C<EventResponse>.


=head2 NextToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 _request_id => Str


=cut

1;