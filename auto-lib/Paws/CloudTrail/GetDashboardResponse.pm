
package Paws::CloudTrail::GetDashboardResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DashboardArn => (is => 'ro', isa => 'Str');
  has LastRefreshFailureReason => (is => 'ro', isa => 'Str');
  has LastRefreshId => (is => 'ro', isa => 'Str');
  has RefreshSchedule => (is => 'ro', isa => 'Paws::CloudTrail::RefreshSchedule');
  has Status => (is => 'ro', isa => 'Str');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
  has Widgets => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Widget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetDashboardResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The timestamp that shows when the dashboard was created.


=head2 DashboardArn => Str

The ARN for the dashboard.


=head2 LastRefreshFailureReason => Str

Provides information about failures for the last scheduled refresh.


=head2 LastRefreshId => Str

The ID of the last dashboard refresh.


=head2 RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>

The refresh schedule for the dashboard, if configured.


=head2 Status => Str

The status of the dashboard.

Valid values are: C<"CREATING">, C<"CREATED">, C<"UPDATING">, C<"UPDATED">, C<"DELETING">
=head2 TerminationProtectionEnabled => Bool

Indicates whether termination protection is enabled for the dashboard.


=head2 Type => Str

The type of dashboard.

Valid values are: C<"MANAGED">, C<"CUSTOM">
=head2 UpdatedTimestamp => Str

The timestamp that shows when the dashboard was last updated.


=head2 Widgets => ArrayRef[L<Paws::CloudTrail::Widget>]

An array of widgets for the dashboard.


=head2 _request_id => Str


=cut

1;