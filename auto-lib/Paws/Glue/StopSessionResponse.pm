
package Paws::Glue::StopSessionResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StopSessionResponse

=head1 ATTRIBUTES


=head2 Id => Str

Returns the Id of the stopped session.


=head2 _request_id => Str


=cut

1;