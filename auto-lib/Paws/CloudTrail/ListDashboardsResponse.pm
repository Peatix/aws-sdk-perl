
package Paws::CloudTrail::ListDashboardsResponse;
  use Moose;
  has Dashboards => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::DashboardDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListDashboardsResponse

=head1 ATTRIBUTES


=head2 Dashboards => ArrayRef[L<Paws::CloudTrail::DashboardDetail>]

Contains information about dashboards in the account, in the current
Region that match the applied filters.


=head2 NextToken => Str

A token you can use to get the next page of dashboard results.


=head2 _request_id => Str


=cut

1;