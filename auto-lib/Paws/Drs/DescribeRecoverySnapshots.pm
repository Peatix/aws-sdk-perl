
package Paws::Drs::DescribeRecoverySnapshots;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Drs::DescribeRecoverySnapshotsRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Order => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'order');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecoverySnapshots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeRecoverySnapshots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::DescribeRecoverySnapshotsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeRecoverySnapshots - Arguments for method DescribeRecoverySnapshots on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecoverySnapshots on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method DescribeRecoverySnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecoverySnapshots.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $DescribeRecoverySnapshotsResponse = $drs->DescribeRecoverySnapshots(
      SourceServerID => 'MySourceServerID',
      Filters        => {
        FromDateTime => 'MyISO8601DatetimeString',  # min: 19, max: 32; OPTIONAL
        ToDateTime   => 'MyISO8601DatetimeString',  # min: 19, max: 32; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Order      => 'ASC',                  # OPTIONAL
    );

    # Results:
    my $Items     = $DescribeRecoverySnapshotsResponse->Items;
    my $NextToken = $DescribeRecoverySnapshotsResponse->NextToken;

    # Returns a L<Paws::Drs::DescribeRecoverySnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/DescribeRecoverySnapshots>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Drs::DescribeRecoverySnapshotsRequestFilters>

A set of filters by which to return Recovery Snapshots.



=head2 MaxResults => Int

Maximum number of Recovery Snapshots to retrieve.



=head2 NextToken => Str

The token of the next Recovery Snapshot to retrieve.



=head2 Order => Str

The sorted ordering by which to return Recovery Snapshots.

Valid values are: C<"ASC">, C<"DESC">

=head2 B<REQUIRED> SourceServerID => Str

Filter Recovery Snapshots by Source Server ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecoverySnapshots in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

