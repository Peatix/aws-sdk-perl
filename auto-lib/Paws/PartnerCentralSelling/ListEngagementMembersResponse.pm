
package Paws::PartnerCentralSelling::ListEngagementMembersResponse;
  use Moose;
  has EngagementMemberList => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementMember]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementMemberList => ArrayRef[L<Paws::PartnerCentralSelling::EngagementMember>]

Provides a list of engagement members.


=head2 NextToken => Str

A pagination token used to retrieve the next set of results. If there
are more results available than can be returned in a single response,
this token will be present. Use this token in a subsequent request to
retrieve the next page of results. If there are no more results, this
value will be null.


=head2 _request_id => Str


=cut

1;