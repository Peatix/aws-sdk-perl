
package Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociationsResponse;
  use Moose;
  has ConfiguredModelAlgorithmAssociations => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::ConfiguredModelAlgorithmAssociationSummary]', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListConfiguredModelAlgorithmAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociations => ArrayRef[L<Paws::CleanRoomsML::ConfiguredModelAlgorithmAssociationSummary>]

The list of configured model algorithm associations.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

