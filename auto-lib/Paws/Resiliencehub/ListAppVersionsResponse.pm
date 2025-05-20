
package Paws::Resiliencehub::ListAppVersionsResponse;
  use Moose;
  has AppVersions => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppVersionSummary]', traits => ['NameInRequest'], request_name => 'appVersions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppVersions => ArrayRef[L<Paws::Resiliencehub::AppVersionSummary>]

The version of the application.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

