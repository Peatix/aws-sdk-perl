
package Paws::Glue::GetBlueprintResponse;
  use Moose;
  has Blueprint => (is => 'ro', isa => 'Paws::Glue::Blueprint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprintResponse

=head1 ATTRIBUTES


=head2 Blueprint => L<Paws::Glue::Blueprint>

Returns a C<Blueprint> object.


=head2 _request_id => Str


=cut

1;