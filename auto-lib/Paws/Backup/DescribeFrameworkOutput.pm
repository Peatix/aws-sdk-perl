
package Paws::Backup::DescribeFrameworkOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has FrameworkArn => (is => 'ro', isa => 'Str');
  has FrameworkControls => (is => 'ro', isa => 'ArrayRef[Paws::Backup::FrameworkControl]');
  has FrameworkDescription => (is => 'ro', isa => 'Str');
  has FrameworkName => (is => 'ro', isa => 'Str');
  has FrameworkStatus => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeFrameworkOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time that a framework is created, in ISO 8601
representation. The value of C<CreationTime> is accurate to
milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents the
10th of July 2020 at 3:00 PM 8 hours behind UTC.


=head2 DeploymentStatus => Str

The deployment status of a framework. The statuses are:

C<CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
COMPLETED | FAILED>


=head2 FrameworkArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 FrameworkControls => ArrayRef[L<Paws::Backup::FrameworkControl>]

The controls that make up the framework. Each control in the list has a
name, input parameters, and scope.


=head2 FrameworkDescription => Str

An optional description of the framework.


=head2 FrameworkName => Str

The unique name of a framework.


=head2 FrameworkStatus => Str

A framework consists of one or more controls. Each control governs a
resource, such as backup plans, backup selections, backup vaults, or
recovery points. You can also turn Config recording on or off for each
resource. The statuses are:

=over

=item *

C<ACTIVE> when recording is turned on for all resources governed by the
framework.

=item *

C<PARTIALLY_ACTIVE> when recording is turned off for at least one
resource governed by the framework.

=item *

C<INACTIVE> when recording is turned off for all resources governed by
the framework.

=item *

C<UNAVAILABLE> when Backup is unable to validate recording status at
this time.

=back



=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<DescribeFrameworkOutput>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.


=head2 _request_id => Str


=cut

