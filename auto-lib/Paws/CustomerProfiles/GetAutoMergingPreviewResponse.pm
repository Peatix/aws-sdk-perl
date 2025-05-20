
package Paws::CustomerProfiles::GetAutoMergingPreviewResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfMatchesInSample => (is => 'ro', isa => 'Int');
  has NumberOfProfilesInSample => (is => 'ro', isa => 'Int');
  has NumberOfProfilesWillBeMerged => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetAutoMergingPreviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 NumberOfMatchesInSample => Int

The number of match groups in the domain that have been reviewed in
this preview dry run.


=head2 NumberOfProfilesInSample => Int

The number of profiles found in this preview dry run.


=head2 NumberOfProfilesWillBeMerged => Int

The number of profiles that would be merged if this wasn't a preview
dry run.


=head2 _request_id => Str


=cut

