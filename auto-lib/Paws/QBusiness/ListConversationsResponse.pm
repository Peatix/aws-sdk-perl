
package Paws::QBusiness::ListConversationsResponse;
  use Moose;
  has Conversations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Conversation]', traits => ['NameInRequest'], request_name => 'conversations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListConversationsResponse

=head1 ATTRIBUTES


=head2 Conversations => ArrayRef[L<Paws::QBusiness::Conversation>]

An array of summary information on the configuration of one or more
Amazon Q Business web experiences.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of messages.


=head2 _request_id => Str


=cut

