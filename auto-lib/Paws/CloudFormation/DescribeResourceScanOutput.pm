
package Paws::CloudFormation::DescribeResourceScanOutput;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has PercentageCompleted => (is => 'ro', isa => 'Num');
  has ResourceScanId => (is => 'ro', isa => 'Str');
  has ResourcesRead => (is => 'ro', isa => 'Int');
  has ResourcesScanned => (is => 'ro', isa => 'Int');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScanFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ScanFilter]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeResourceScanOutput

=head1 ATTRIBUTES


=head2 EndTime => Str

The time that the resource scan was finished.


=head2 PercentageCompleted => Num

The percentage of the resource scan that has been completed.


=head2 ResourceScanId => Str

The Amazon Resource Name (ARN) of the resource scan. The format is
C<arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}>.
An example is
C<arn:aws:cloudformation:I<us-east-1>:I<123456789012>:resourceScan/I<f5b490f7-7ed4-428a-aa06-31ff25db0772>
>.


=head2 ResourcesRead => Int

The number of resources that were read. This is only available for
scans with a C<Status> set to C<COMPLETE>, C<EXPIRED>, or C<FAILED>.

This field may be 0 if the resource scan failed with a
C<ResourceScanLimitExceededException>.


=head2 ResourcesScanned => Int

The number of resources that were listed. This is only available for
scans with a C<Status> set to C<COMPLETE>, C<EXPIRED>, or C<FAILED >.


=head2 ResourceTypes => ArrayRef[Str|Undef]

The list of resource types for the specified scan. Resource types are
only available for scans with a C<Status> set to C<COMPLETE> or
C<FAILED >.


=head2 ScanFilters => ArrayRef[L<Paws::CloudFormation::ScanFilter>]

The scan filters that were used.


=head2 StartTime => Str

The time that the resource scan was started.


=head2 Status => Str

Status of the resource scan.

=over

=item IN_PROGRESS

The resource scan is still in progress.

=item COMPLETE

The resource scan is complete.

=item EXPIRED

The resource scan has expired.

=item FAILED

The resource scan has failed.

=back


Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETE">, C<"EXPIRED">
=head2 StatusReason => Str

The reason for the resource scan status, providing more information if
a failure happened.


=head2 _request_id => Str


=cut

