
package Paws::GuardDuty::GetOrganizationStatisticsResponse;
  use Moose;
  has OrganizationDetails => (is => 'ro', isa => 'Paws::GuardDuty::OrganizationDetails', traits => ['NameInRequest'], request_name => 'organizationDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetOrganizationStatisticsResponse

=head1 ATTRIBUTES


=head2 OrganizationDetails => L<Paws::GuardDuty::OrganizationDetails>

Information about the statistics report for your organization.


=head2 _request_id => Str


=cut

