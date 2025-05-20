
package Paws::AppSync::ListChannelNamespacesResponse;
  use Moose;
  has ChannelNamespaces => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::ChannelNamespace]', traits => ['NameInRequest'], request_name => 'channelNamespaces');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListChannelNamespacesResponse

=head1 ATTRIBUTES


=head2 ChannelNamespaces => ArrayRef[L<Paws::AppSync::ChannelNamespace>]

The C<ChannelNamespace> objects.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.


=head2 _request_id => Str


=cut

