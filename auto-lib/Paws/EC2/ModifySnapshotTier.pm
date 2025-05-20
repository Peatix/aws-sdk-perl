
package Paws::EC2::ModifySnapshotTier;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has StorageTier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotTier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifySnapshotTierResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySnapshotTier - Arguments for method ModifySnapshotTier on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySnapshotTier on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifySnapshotTier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySnapshotTier.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifySnapshotTierResult = $ec2->ModifySnapshotTier(
      SnapshotId  => 'MySnapshotId',
      DryRun      => 1,                # OPTIONAL
      StorageTier => 'archive',        # OPTIONAL
    );

    # Results:
    my $SnapshotId       = $ModifySnapshotTierResult->SnapshotId;
    my $TieringStartTime = $ModifySnapshotTierResult->TieringStartTime;

    # Returns a L<Paws::EC2::ModifySnapshotTierResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifySnapshotTier>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot.



=head2 StorageTier => Str

The name of the storage tier. You must specify C<archive>.

Valid values are: C<"archive">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySnapshotTier in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

