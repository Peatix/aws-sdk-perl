
package Paws::IoT::ListPackageVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PackageVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PackageVersionSummary]', traits => ['NameInRequest'], request_name => 'packageVersionSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPackageVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results.


=head2 PackageVersionSummaries => ArrayRef[L<Paws::IoT::PackageVersionSummary>]

Lists the package versions associated to the package.


=head2 _request_id => Str


=cut

