
package Paws::Glue::CreateBlueprintResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateBlueprintResponse

=head1 ATTRIBUTES


=head2 Name => Str

Returns the name of the blueprint that was registered.


=head2 _request_id => Str


=cut

1;