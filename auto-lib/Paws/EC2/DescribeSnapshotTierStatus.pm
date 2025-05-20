
package Paws::EC2::DescribeSnapshotTierStatus;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotTierStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSnapshotTierStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotTierStatus - Arguments for method DescribeSnapshotTierStatus on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshotTierStatus on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSnapshotTierStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshotTierStatus.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeSnapshotTierStatusResult = $ec2->DescribeSnapshotTierStatus(
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
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSnapshotTierStatusResult->NextToken;
    my $SnapshotTierStatuses =
      $DescribeSnapshotTierStatusResult->SnapshotTierStatuses;

    # Returns a L<Paws::EC2::DescribeSnapshotTierStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSnapshotTierStatus>

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

C<snapshot-id> - The snapshot ID.

=item *

C<volume-id> - The ID of the volume the snapshot is for.

=item *

C<last-tiering-operation> - The state of the last archive or restore
action. (C<archival-in-progress> | C<archival-completed> |
C<archival-failed> | C<permanent-restore-in-progress> |
C<permanent-restore-completed> | C<permanent-restore-failed> |
C<temporary-restore-in-progress> | C<temporary-restore-completed> |
C<temporary-restore-failed>)

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshotTierStatus in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

