
package Paws::CustomerProfiles::GetSegmentMembershipResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ProfileQueryFailures]', traits => ['NameInRequest'], request_name => 'Failures');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ProfileQueryResult]', traits => ['NameInRequest'], request_name => 'Profiles');
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'SegmentDefinitionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentMembershipResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::CustomerProfiles::ProfileQueryFailures>]

An array of maps where each contains a response per profile failed for
the request.


=head2 Profiles => ArrayRef[L<Paws::CustomerProfiles::ProfileQueryResult>]

An array of maps where each contains a response per profile requested.


=head2 SegmentDefinitionName => Str

The unique name of the segment definition.


=head2 _request_id => Str


=cut

