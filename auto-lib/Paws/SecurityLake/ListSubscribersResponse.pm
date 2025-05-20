
package Paws::SecurityLake::ListSubscribersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::SubscriberResource]', traits => ['NameInRequest'], request_name => 'subscribers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListSubscribersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If nextToken is returned, there are more results available. You can
repeat the call using the returned token to retrieve the next page.


=head2 Subscribers => ArrayRef[L<Paws::SecurityLake::SubscriberResource>]

The subscribers available for the specified Security Lake account ID.


=head2 _request_id => Str


=cut

