
package Paws::Glue::ListDataQualityResultsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityResultDescription]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDataQualityResultsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::Glue::DataQualityResultDescription>]

A list of C<DataQualityResultDescription> objects.


=head2 _request_id => Str


=cut

1;