
package Paws::Synthetics::GetGroupResponse;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::Synthetics::Group');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::GetGroupResponse

=head1 ATTRIBUTES


=head2 Group => L<Paws::Synthetics::Group>

A structure that contains information about the group.


=head2 _request_id => Str


=cut

