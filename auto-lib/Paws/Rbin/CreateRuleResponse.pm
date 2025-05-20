
package Paws::Rbin::CreateRuleResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExcludeResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has Identifier => (is => 'ro', isa => 'Str');
  has LockConfiguration => (is => 'ro', isa => 'Paws::Rbin::LockConfiguration');
  has LockState => (is => 'ro', isa => 'Str');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has ResourceType => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::Rbin::RetentionPeriod');
  has RuleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::CreateRuleResponse

=head1 ATTRIBUTES


=head2 Description => Str

The retention rule description.


=head2 ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Region-level retention rules only] Information about the exclusion
tags used to identify resources that are to be excluded, or ignored, by
the retention rule.


=head2 Identifier => Str

The unique ID of the retention rule.


=head2 LockConfiguration => L<Paws::Rbin::LockConfiguration>

Information about the retention rule lock configuration.


=head2 LockState => Str

[Region-level retention rules only] The lock state for the retention
rule.

=over

=item *

C<locked> - The retention rule is locked and can't be modified or
deleted.

=item *

C<pending_unlock> - The retention rule has been unlocked but it is
still within the unlock delay period. The retention rule can be
modified or deleted only after the unlock delay period has expired.

=item *

C<unlocked> - The retention rule is unlocked and it can be modified or
deleted by any user with the required permissions.

=item *

C<null> - The retention rule has never been locked. Once a retention
rule has been locked, it can transition between the C<locked> and
C<unlocked> states only; it can never transition back to C<null>.

=back


Valid values are: C<"locked">, C<"pending_unlock">, C<"unlocked">
=head2 ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Tag-level retention rules only] Information about the resource tags
used to identify resources that are retained by the retention rule.


=head2 ResourceType => Str

The resource type retained by the retention rule.

Valid values are: C<"EBS_SNAPSHOT">, C<"EC2_IMAGE">
=head2 RetentionPeriod => L<Paws::Rbin::RetentionPeriod>




=head2 RuleArn => Str

The Amazon Resource Name (ARN) of the retention rule.


=head2 Status => Str

The state of the retention rule. Only retention rules that are in the
C<available> state retain resources.

Valid values are: C<"pending">, C<"available">
=head2 Tags => ArrayRef[L<Paws::Rbin::Tag>]

Information about the tags assigned to the retention rule.


=head2 _request_id => Str


=cut

