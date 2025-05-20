
package Paws::CleanRooms::ListConfiguredTableAssociationsOutput;
  use Moose;
  has ConfiguredTableAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::ConfiguredTableAssociationSummary]', traits => ['NameInRequest'], request_name => 'configuredTableAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListConfiguredTableAssociationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTableAssociationSummaries => ArrayRef[L<Paws::CleanRooms::ConfiguredTableAssociationSummary>]

The retrieved list of configured table associations.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

