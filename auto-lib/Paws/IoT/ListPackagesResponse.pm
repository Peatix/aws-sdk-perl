
package Paws::IoT::ListPackagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PackageSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PackageSummary]', traits => ['NameInRequest'], request_name => 'packageSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results.


=head2 PackageSummaries => ArrayRef[L<Paws::IoT::PackageSummary>]

The software package summary.


=head2 _request_id => Str


=cut

