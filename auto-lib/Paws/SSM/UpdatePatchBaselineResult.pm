
package Paws::SSM::UpdatePatchBaselineResult;
  use Moose;
  has ApprovalRules => (is => 'ro', isa => 'Paws::SSM::PatchRuleGroup');
  has ApprovedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApprovedPatchesComplianceLevel => (is => 'ro', isa => 'Str');
  has ApprovedPatchesEnableNonSecurity => (is => 'ro', isa => 'Bool');
  has AvailableSecurityUpdatesComplianceStatus => (is => 'ro', isa => 'Str');
  has BaselineId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalFilters => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup');
  has ModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has RejectedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RejectedPatchesAction => (is => 'ro', isa => 'Str');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchSource]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdatePatchBaselineResult

=head1 ATTRIBUTES


=head2 ApprovalRules => L<Paws::SSM::PatchRuleGroup>

A set of rules used to include patches in the baseline.


=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.


=head2 ApprovedPatchesComplianceLevel => Str

The compliance severity level assigned to the patch baseline after the
update completed.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"INFORMATIONAL">, C<"UNSPECIFIED">
=head2 ApprovedPatchesEnableNonSecurity => Bool

Indicates whether the list of approved patches includes non-security
updates that should be applied to the managed nodes. The default value
is C<false>. Applies to Linux managed nodes only.


=head2 AvailableSecurityUpdatesComplianceStatus => Str

Indicates the compliance status of managed nodes for which
security-related patches are available but were not approved. This
preference is specified when the C<CreatePatchBaseline> or
C<UpdatePatchBaseline> commands are run.

Applies to Windows Server managed nodes only.

Valid values are: C<"COMPLIANT">, C<"NON_COMPLIANT">
=head2 BaselineId => Str

The ID of the deleted patch baseline.


=head2 CreatedDate => Str

The date when the patch baseline was created.


=head2 Description => Str

A description of the patch baseline.


=head2 GlobalFilters => L<Paws::SSM::PatchFilterGroup>

A set of global filters used to exclude patches from the baseline.


=head2 ModifiedDate => Str

The date when the patch baseline was last modified.


=head2 Name => Str

The name of the patch baseline.


=head2 OperatingSystem => Str

The operating system rule used by the updated patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"AMAZON_LINUX_2022">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">, C<"ORACLE_LINUX">, C<"DEBIAN">, C<"MACOS">, C<"RASPBIAN">, C<"ROCKY_LINUX">, C<"ALMA_LINUX">, C<"AMAZON_LINUX_2023">
=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.


=head2 RejectedPatchesAction => Str

The action specified to take on patches included in the
C<RejectedPatches> list. A patch can be allowed only if it is a
dependency of another package, or blocked entirely along with packages
that include it as a dependency.

Valid values are: C<"ALLOW_AS_DEPENDENCY">, C<"BLOCK">
=head2 Sources => ArrayRef[L<Paws::SSM::PatchSource>]

Information about the patches to use to update the managed nodes,
including target operating systems and source repositories. Applies to
Linux managed nodes only.


=head2 _request_id => Str


=cut

1;