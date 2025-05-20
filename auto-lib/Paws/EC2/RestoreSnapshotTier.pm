
package Paws::EC2::RestoreSnapshotTier;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has PermanentRestore => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has TemporaryRestoreDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreSnapshotTier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RestoreSnapshotTierResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RestoreSnapshotTier - Arguments for method RestoreSnapshotTier on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreSnapshotTier on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RestoreSnapshotTier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreSnapshotTier.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RestoreSnapshotTierResult = $ec2->RestoreSnapshotTier(
      SnapshotId           => 'MySnapshotId',
      DryRun               => 1,                # OPTIONAL
      PermanentRestore     => 1,                # OPTIONAL
      TemporaryRestoreDays => 1,                # OPTIONAL
    );

    # Results:
    my $IsPermanentRestore = $RestoreSnapshotTierResult->IsPermanentRestore;
    my $RestoreDuration    = $RestoreSnapshotTierResult->RestoreDuration;
    my $RestoreStartTime   = $RestoreSnapshotTierResult->RestoreStartTime;
    my $SnapshotId         = $RestoreSnapshotTierResult->SnapshotId;

    # Returns a L<Paws::EC2::RestoreSnapshotTierResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RestoreSnapshotTier>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PermanentRestore => Bool

Indicates whether to permanently restore an archived snapshot. To
permanently restore an archived snapshot, specify C<true> and omit the
B<RestoreSnapshotTierRequest$TemporaryRestoreDays> parameter.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot to restore.



=head2 TemporaryRestoreDays => Int

Specifies the number of days for which to temporarily restore an
archived snapshot. Required for temporary restores only. The snapshot
will be automatically re-archived after this period.

To temporarily restore an archived snapshot, specify the number of days
and omit the B<PermanentRestore> parameter or set it to C<false>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreSnapshotTier in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

