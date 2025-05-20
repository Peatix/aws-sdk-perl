
package Paws::Tnb::TerminateSolNetworkInstanceOutput;
  use Moose;
  has NsLcmOpOccId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsLcmOpOccId');
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::TerminateSolNetworkInstanceOutput

=head1 ATTRIBUTES


=head2 NsLcmOpOccId => Str

The identifier of the network operation.


=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. When you use this
API, the tags are only applied to the network operation that is
created. These tags are not applied to the network instance. Use tags
to search and filter your resources or track your Amazon Web Services
costs.


=head2 _request_id => Str


=cut

