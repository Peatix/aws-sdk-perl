
package Paws::EC2::DescribeLockedSnapshots;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SnapshotId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLockedSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeLockedSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLockedSnapshots - Arguments for method DescribeLockedSnapshots on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLockedSnapshots on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeLockedSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLockedSnapshots.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeLockedSnapshotsResult = $ec2->DescribeLockedSnapshots(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyString',                 # OPTIONAL
      SnapshotIds => [ 'MySnapshotId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeLockedSnapshotsResult->NextToken;
    my $Snapshots = $DescribeLockedSnapshotsResult->Snapshots;

    # Returns a L<Paws::EC2::DescribeLockedSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeLockedSnapshots>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<lock-state> - The state of the snapshot lock (C<compliance-cooloff> |
C<governance> | C<compliance> | C<expired>).

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 SnapshotIds => ArrayRef[Str|Undef]

The IDs of the snapshots for which to view the lock status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLockedSnapshots in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

