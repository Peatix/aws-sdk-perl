
package Paws::Drs::CreateSourceNetworkResponse;
  use Moose;
  has SourceNetworkID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceNetworkID');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateSourceNetworkResponse

=head1 ATTRIBUTES


=head2 SourceNetworkID => Str

ID of the created Source Network.


=head2 _request_id => Str


=cut

