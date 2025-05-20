
package Paws::M2::ListApplicationVersionsResponse;
  use Moose;
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Paws::M2::ApplicationVersionSummary]', traits => ['NameInRequest'], request_name => 'applicationVersions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListApplicationVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationVersions => ArrayRef[L<Paws::M2::ApplicationVersionSummary>]

The list of application versions.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to this operation to retrieve the next set of
items.


=head2 _request_id => Str


=cut

