
package Paws::Glue::ListCustomEntityTypesResponse;
  use Moose;
  has CustomEntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CustomEntityType]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListCustomEntityTypesResponse

=head1 ATTRIBUTES


=head2 CustomEntityTypes => ArrayRef[L<Paws::Glue::CustomEntityType>]

A list of C<CustomEntityType> objects representing custom patterns.


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 _request_id => Str


=cut

1;