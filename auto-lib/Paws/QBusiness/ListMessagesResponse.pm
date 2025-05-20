
package Paws::QBusiness::ListMessagesResponse;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Message]', traits => ['NameInRequest'], request_name => 'messages');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListMessagesResponse

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[L<Paws::QBusiness::Message>]

An array of information on one or more messages.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of messages.


=head2 _request_id => Str


=cut

