
package Paws::CleanRoomsML::ListMLInputChannelsResponse;
  use Moose;
  has MlInputChannelsList => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::MLInputChannelSummary]', traits => ['NameInRequest'], request_name => 'mlInputChannelsList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListMLInputChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MlInputChannelsList => ArrayRef[L<Paws::CleanRoomsML::MLInputChannelSummary>]

The list of ML input channels that you wanted.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

