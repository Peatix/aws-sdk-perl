
package Paws::Glue::DeleteCustomEntityTypeResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteCustomEntityTypeResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the custom pattern you deleted.


=head2 _request_id => Str


=cut

1;