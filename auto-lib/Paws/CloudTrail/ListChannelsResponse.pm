
package Paws::CloudTrail::ListChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Channel]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::CloudTrail::Channel>]

The list of channels in the account.


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.


=head2 _request_id => Str


=cut

1;