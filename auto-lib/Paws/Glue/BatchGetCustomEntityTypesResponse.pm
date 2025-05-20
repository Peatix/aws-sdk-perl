
package Paws::Glue::BatchGetCustomEntityTypesResponse;
  use Moose;
  has CustomEntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CustomEntityType]');
  has CustomEntityTypesNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetCustomEntityTypesResponse

=head1 ATTRIBUTES


=head2 CustomEntityTypes => ArrayRef[L<Paws::Glue::CustomEntityType>]

A list of C<CustomEntityType> objects representing the custom patterns
that have been created.


=head2 CustomEntityTypesNotFound => ArrayRef[Str|Undef]

A list of the names of custom patterns that were not found.


=head2 _request_id => Str


=cut

1;