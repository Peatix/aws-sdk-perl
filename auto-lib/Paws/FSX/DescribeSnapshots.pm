
package Paws::FSX::DescribeSnapshots;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::SnapshotFilter]');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeSnapshots - Arguments for method DescribeSnapshots on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshots on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshots.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeSnapshotsResponse = $fsx->DescribeSnapshots(
      Filters => [
        {
          Name =>
            'file-system-id',    # values: file-system-id, volume-id; OPTIONAL
          Values => [
            'MySnapshotFilterValue', ...    # min: 1, max: 128
          ],    # max: 20; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IncludeShared => 1,                # OPTIONAL
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
      SnapshotIds   => [
        'MySnapshotId', ...              # min: 11, max: 28
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSnapshotsResponse->NextToken;
    my $Snapshots = $DescribeSnapshotsResponse->Snapshots;

    # Returns a L<Paws::FSX::DescribeSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeSnapshots>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::FSX::SnapshotFilter>]

The filters structure. The supported names are C<file-system-id> or
C<volume-id>.



=head2 IncludeShared => Bool

Set to C<false> (default) if you want to only see the snapshots owned
by your Amazon Web Services account. Set to C<true> if you want to see
the snapshots in your account and the ones shared with you from another
account.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 SnapshotIds => ArrayRef[Str|Undef]

The IDs of the snapshots that you want to retrieve. This parameter
value overrides any filters. If any IDs aren't found, a
C<SnapshotNotFound> error occurs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshots in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

