
package Paws::VerifiedPermissions::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::VerifiedPermissions::TagMap', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::VerifiedPermissions::TagMap>

The list of tags associated with the resource.


=head2 _request_id => Str


=cut

1;