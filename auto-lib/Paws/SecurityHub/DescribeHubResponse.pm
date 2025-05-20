
package Paws::SecurityHub::DescribeHubResponse;
  use Moose;
  has AutoEnableControls => (is => 'ro', isa => 'Bool');
  has ControlFindingGenerator => (is => 'ro', isa => 'Str');
  has HubArn => (is => 'ro', isa => 'Str');
  has SubscribedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeHubResponse

=head1 ATTRIBUTES


=head2 AutoEnableControls => Bool

Whether to automatically enable new controls when they are added to
standards that are enabled.

If set to C<true>, then new controls for enabled standards are enabled
automatically. If set to C<false>, then new controls are not enabled.

When you automatically enable new controls, you can interact with the
controls in the console and programmatically immediately after release.
However, automatically enabled controls have a temporary default status
of C<DISABLED>. It can take up to several days for Security Hub to
process the control release and designate the control as C<ENABLED> in
your account. During the processing period, you can manually enable or
disable a control, and Security Hub will maintain that designation
regardless of whether you have C<AutoEnableControls> set to C<true>.


=head2 ControlFindingGenerator => Str

Specifies whether the calling account has consolidated control findings
turned on. If the value for this field is set to C<SECURITY_CONTROL>,
Security Hub generates a single finding for a control check even when
the check applies to multiple enabled standards.

If the value for this field is set to C<STANDARD_CONTROL>, Security Hub
generates separate findings for a control check when the check applies
to multiple enabled standards.

The value for this field in a member account matches the value in the
administrator account. For accounts that aren't part of an
organization, the default value of this field is C<SECURITY_CONTROL> if
you enabled Security Hub on or after February 23, 2023.

Valid values are: C<"STANDARD_CONTROL">, C<"SECURITY_CONTROL">
=head2 HubArn => Str

The ARN of the Hub resource that was retrieved.


=head2 SubscribedAt => Str

The date and time when Security Hub was enabled in the account.


=head2 _request_id => Str


=cut

