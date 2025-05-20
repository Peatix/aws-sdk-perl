
package Paws::Glue::GetBlueprintRunsResponse;
  use Moose;
  has BlueprintRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BlueprintRun]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetBlueprintRunsResponse

=head1 ATTRIBUTES


=head2 BlueprintRuns => ArrayRef[L<Paws::Glue::BlueprintRun>]

Returns a list of C<BlueprintRun> objects.


=head2 NextToken => Str

A continuation token, if not all blueprint runs have been returned.


=head2 _request_id => Str


=cut

1;