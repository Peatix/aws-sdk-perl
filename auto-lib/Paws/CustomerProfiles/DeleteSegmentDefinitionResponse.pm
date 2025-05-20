
package Paws::CustomerProfiles::DeleteSegmentDefinitionResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Message');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DeleteSegmentDefinitionResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message that indicates the delete request is done.


=head2 _request_id => Str


=cut

