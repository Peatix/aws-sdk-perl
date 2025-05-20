
package Paws::Repostspace::CreateSpaceOutput;
  use Moose;
  has SpaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::CreateSpaceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpaceId => Str

The unique ID of the private re:Post.


=head2 _request_id => Str


=cut

