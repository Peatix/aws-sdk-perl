
package Paws::EC2::EnableSnapshotBlockPublicAccess;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has State => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSnapshotBlockPublicAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableSnapshotBlockPublicAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableSnapshotBlockPublicAccess - Arguments for method EnableSnapshotBlockPublicAccess on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableSnapshotBlockPublicAccess on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableSnapshotBlockPublicAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableSnapshotBlockPublicAccess.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableSnapshotBlockPublicAccessResult =
      $ec2->EnableSnapshotBlockPublicAccess(
      State  => 'block-all-sharing',
      DryRun => 1,                     # OPTIONAL
      );

    # Results:
    my $State = $EnableSnapshotBlockPublicAccessResult->State;

    # Returns a L<Paws::EC2::EnableSnapshotBlockPublicAccessResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableSnapshotBlockPublicAccess>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> State => Str

The mode in which to enable block public access for snapshots for the
Region. Specify one of the following values:

=over

=item *

C<block-all-sharing> - Prevents all public sharing of snapshots in the
Region. Users in the account will no longer be able to request new
public sharing. Additionally, snapshots that are already publicly
shared are treated as private and they are no longer publicly
available.

=item *

C<block-new-sharing> - Prevents only new public sharing of snapshots in
the Region. Users in the account will no longer be able to request new
public sharing. However, snapshots that are already publicly shared,
remain publicly available.

=back

C<unblocked> is not a valid value for
B<EnableSnapshotBlockPublicAccess>.

Valid values are: C<"block-all-sharing">, C<"block-new-sharing">, C<"unblocked">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableSnapshotBlockPublicAccess in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

