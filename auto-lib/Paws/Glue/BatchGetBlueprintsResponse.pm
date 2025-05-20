
package Paws::Glue::BatchGetBlueprintsResponse;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Blueprint]');
  has MissingBlueprints => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetBlueprintsResponse

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[L<Paws::Glue::Blueprint>]

Returns a list of blueprint as a C<Blueprints> object.


=head2 MissingBlueprints => ArrayRef[Str|Undef]

Returns a list of C<BlueprintNames> that were not found.


=head2 _request_id => Str


=cut

1;