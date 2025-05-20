
package Paws::CloudTrail::CreateDashboardResponse;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RefreshSchedule => (is => 'ro', isa => 'Paws::CloudTrail::RefreshSchedule');
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str');
  has Widgets => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Widget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateDashboardResponse

=head1 ATTRIBUTES


=head2 DashboardArn => Str

The ARN for the dashboard.


=head2 Name => Str

The name of the dashboard.


=head2 RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>

The refresh schedule for the dashboard, if configured.


=head2 TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]




=head2 TerminationProtectionEnabled => Bool

Indicates whether termination protection is enabled for the dashboard.


=head2 Type => Str

The dashboard type.

Valid values are: C<"MANAGED">, C<"CUSTOM">
=head2 Widgets => ArrayRef[L<Paws::CloudTrail::Widget>]

An array of widgets for the dashboard.


=head2 _request_id => Str


=cut

1;