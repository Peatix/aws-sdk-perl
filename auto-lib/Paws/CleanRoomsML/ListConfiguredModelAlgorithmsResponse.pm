
package Paws::CleanRoomsML::ListConfiguredModelAlgorithmsResponse;
  use Moose;
  has ConfiguredModelAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::ConfiguredModelAlgorithmSummary]', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithms', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListConfiguredModelAlgorithmsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithms => ArrayRef[L<Paws::CleanRoomsML::ConfiguredModelAlgorithmSummary>]

The list of configured model algorithms.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

