
package Paws::FinspaceData::ListDatasetsResponse;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::Dataset]', traits => ['NameInRequest'], request_name => 'datasets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Datasets => ArrayRef[L<Paws::FinspaceData::Dataset>]

List of Datasets.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

