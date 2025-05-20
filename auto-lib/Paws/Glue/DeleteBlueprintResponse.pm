
package Paws::Glue::DeleteBlueprintResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteBlueprintResponse

=head1 ATTRIBUTES


=head2 Name => Str

Returns the name of the blueprint that was deleted.


=head2 _request_id => Str


=cut

1;