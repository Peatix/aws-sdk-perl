
package Paws::CloudTrail::StartDashboardRefreshResponse;
  use Moose;
  has RefreshId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartDashboardRefreshResponse

=head1 ATTRIBUTES


=head2 RefreshId => Str

The refresh ID for the dashboard.


=head2 _request_id => Str


=cut

1;