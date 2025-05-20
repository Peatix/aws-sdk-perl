
package Paws::Glue::GetBlueprintRunResponse;
  use Moose;
  has BlueprintRun => (is => 'ro', isa => 'Paws::Glue::BlueprintRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprintRunResponse

=head1 ATTRIBUTES


=head2 BlueprintRun => L<Paws::Glue::BlueprintRun>

Returns a C<BlueprintRun> object.


=head2 _request_id => Str


=cut

1;