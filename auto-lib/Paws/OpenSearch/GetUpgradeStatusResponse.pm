
package Paws::OpenSearch::GetUpgradeStatusResponse;
  use Moose;
  has StepStatus => (is => 'ro', isa => 'Str');
  has UpgradeName => (is => 'ro', isa => 'Str');
  has UpgradeStep => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetUpgradeStatusResponse

=head1 ATTRIBUTES


=head2 StepStatus => Str

The status of the current step that an upgrade is on.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"SUCCEEDED_WITH_ISSUES">, C<"FAILED">
=head2 UpgradeName => Str

A string that describes the update.


=head2 UpgradeStep => Str

One of three steps that an upgrade or upgrade eligibility check goes
through.

Valid values are: C<"PRE_UPGRADE_CHECK">, C<"SNAPSHOT">, C<"UPGRADE">
=head2 _request_id => Str


=cut

