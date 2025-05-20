
package Paws::AppSync::GetChannelNamespaceResponse;
  use Moose;
  has ChannelNamespace => (is => 'ro', isa => 'Paws::AppSync::ChannelNamespace', traits => ['NameInRequest'], request_name => 'channelNamespace');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetChannelNamespaceResponse

=head1 ATTRIBUTES


=head2 ChannelNamespace => L<Paws::AppSync::ChannelNamespace>

The C<ChannelNamespace> object.


=head2 _request_id => Str


=cut

