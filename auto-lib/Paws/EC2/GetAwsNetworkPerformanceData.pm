
package Paws::EC2::GetAwsNetworkPerformanceData;
  use Moose;
  has DataQueries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DataQuery]', traits => ['NameInRequest'], request_name => 'DataQuery' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAwsNetworkPerformanceData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetAwsNetworkPerformanceDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetAwsNetworkPerformanceData - Arguments for method GetAwsNetworkPerformanceData on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAwsNetworkPerformanceData on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetAwsNetworkPerformanceData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAwsNetworkPerformanceData.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetAwsNetworkPerformanceDataResult = $ec2->GetAwsNetworkPerformanceData(
      DataQueries => [
        {
          Destination => 'MyString',       # OPTIONAL
          Id          => 'MyString',       # OPTIONAL
          Metric => 'aggregate-latency',   # values: aggregate-latency; OPTIONAL
          Period => 'five-minutes'
          , # values: five-minutes, fifteen-minutes, one-hour, three-hours, one-day, one-week; OPTIONAL
          Source    => 'MyString',    # OPTIONAL
          Statistic => 'p50',         # values: p50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DryRun     => 1,                        # OPTIONAL
      EndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyString',               # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $DataResponses = $GetAwsNetworkPerformanceDataResult->DataResponses;
    my $NextToken     = $GetAwsNetworkPerformanceDataResult->NextToken;

    # Returns a L<Paws::EC2::GetAwsNetworkPerformanceDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetAwsNetworkPerformanceData>

=head1 ATTRIBUTES


=head2 DataQueries => ArrayRef[L<Paws::EC2::DataQuery>]

A list of network performance data queries.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndTime => Str

The ending time for the performance data request. The end time must be
formatted as C<yyyy-mm-ddThh:mm:ss>. For example,
C<2022-06-12T12:00:00.000Z>.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 StartTime => Str

The starting time for the performance data request. The starting time
must be formatted as C<yyyy-mm-ddThh:mm:ss>. For example,
C<2022-06-10T12:00:00.000Z>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAwsNetworkPerformanceData in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

