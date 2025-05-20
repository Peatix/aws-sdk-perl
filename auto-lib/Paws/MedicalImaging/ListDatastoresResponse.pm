
package Paws::MedicalImaging::ListDatastoresResponse;
  use Moose;
  has DatastoreSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MedicalImaging::DatastoreSummary]', traits => ['NameInRequest'], request_name => 'datastoreSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::ListDatastoresResponse

=head1 ATTRIBUTES


=head2 DatastoreSummaries => ArrayRef[L<Paws::MedicalImaging::DatastoreSummary>]

The list of summaries of data stores.


=head2 NextToken => Str

The pagination token used to retrieve the list of data stores on the
next page.


=head2 _request_id => Str


=cut

