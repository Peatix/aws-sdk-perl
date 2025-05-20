
package Paws::Glue::CreateCustomEntityTypeResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateCustomEntityTypeResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the custom pattern you created.


=head2 _request_id => Str


=cut

1;