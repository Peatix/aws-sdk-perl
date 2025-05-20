
package Paws::IoTData::ListRetainedMessagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RetainedTopics => (is => 'ro', isa => 'ArrayRef[Paws::IoTData::RetainedMessageSummary]', traits => ['NameInRequest'], request_name => 'retainedTopics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::ListRetainedMessagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 RetainedTopics => ArrayRef[L<Paws::IoTData::RetainedMessageSummary>]

A summary list the account's retained messages. The information
returned doesn't include the message payloads of the retained messages.


=head2 _request_id => Str


=cut

