
package Paws::OAM::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::OAM::TagMapOutput');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::OAM::TagMapOutput>

The list of tags associated with the requested resource.E<gt>


=head2 _request_id => Str


=cut

