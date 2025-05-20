
package Paws::SSM::DescribePatchGroupStateResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'Int');
  has InstancesWithAvailableSecurityUpdates => (is => 'ro', isa => 'Int');
  has InstancesWithCriticalNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithFailedPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledOtherPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledPendingRebootPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledRejectedPatches => (is => 'ro', isa => 'Int');
  has InstancesWithMissingPatches => (is => 'ro', isa => 'Int');
  has InstancesWithNotApplicablePatches => (is => 'ro', isa => 'Int');
  has InstancesWithOtherNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithSecurityNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithUnreportedNotApplicablePatches => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupStateResult

=head1 ATTRIBUTES


=head2 Instances => Int

The number of managed nodes in the patch group.


=head2 InstancesWithAvailableSecurityUpdates => Int

The number of managed nodes for which security-related patches are
available but not approved because because they didn't meet the patch
baseline requirements. For example, an updated version of a patch might
have been released before the specified auto-approval period was over.

Applies to Windows Server managed nodes only.


=head2 InstancesWithCriticalNonCompliantPatches => Int

The number of managed nodes where patches that are specified as
C<Critical> for compliance reporting in the patch baseline aren't
installed. These patches might be missing, have failed installation,
were rejected, or were installed but awaiting a required managed node
reboot. The status of these managed nodes is C<NON_COMPLIANT>.


=head2 InstancesWithFailedPatches => Int

The number of managed nodes with patches from the patch baseline that
failed to install.


=head2 InstancesWithInstalledOtherPatches => Int

The number of managed nodes with patches installed that aren't defined
in the patch baseline.


=head2 InstancesWithInstalledPatches => Int

The number of managed nodes with installed patches.


=head2 InstancesWithInstalledPendingRebootPatches => Int

The number of managed nodes with patches installed by Patch Manager
that haven't been rebooted after the patch installation. The status of
these managed nodes is C<NON_COMPLIANT>.


=head2 InstancesWithInstalledRejectedPatches => Int

The number of managed nodes with patches installed that are specified
in a C<RejectedPatches> list. Patches with a status of
C<INSTALLED_REJECTED> were typically installed before they were added
to a C<RejectedPatches> list.

If C<ALLOW_AS_DEPENDENCY> is the specified option for
C<RejectedPatchesAction>, the value of
C<InstancesWithInstalledRejectedPatches> will always be C<0> (zero).


=head2 InstancesWithMissingPatches => Int

The number of managed nodes with missing patches from the patch
baseline.


=head2 InstancesWithNotApplicablePatches => Int

The number of managed nodes with patches that aren't applicable.


=head2 InstancesWithOtherNonCompliantPatches => Int

The number of managed nodes with patches installed that are specified
as other than C<Critical> or C<Security> but aren't compliant with the
patch baseline. The status of these managed nodes is C<NON_COMPLIANT>.


=head2 InstancesWithSecurityNonCompliantPatches => Int

The number of managed nodes where patches that are specified as
C<Security> in a patch advisory aren't installed. These patches might
be missing, have failed installation, were rejected, or were installed
but awaiting a required managed node reboot. The status of these
managed nodes is C<NON_COMPLIANT>.


=head2 InstancesWithUnreportedNotApplicablePatches => Int

The number of managed nodes with C<NotApplicable> patches beyond the
supported limit, which aren't reported by name to Inventory. Inventory
is a tool in Amazon Web Services Systems Manager.


=head2 _request_id => Str


=cut

1;