
package Paws::Deadline::GetSessionsStatisticsAggregation;
  use Moose;
  has AggregationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'aggregationId', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionsStatisticsAggregation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/sessions-statistics-aggregation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetSessionsStatisticsAggregationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetSessionsStatisticsAggregation - Arguments for method GetSessionsStatisticsAggregation on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSessionsStatisticsAggregation on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetSessionsStatisticsAggregation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSessionsStatisticsAggregation.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetSessionsStatisticsAggregationResponse =
      $deadline->GetSessionsStatisticsAggregation(
      AggregationId => 'MyAggregationId',
      FarmId        => 'MyFarmId',
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyString',          # OPTIONAL
      );

    # Results:
    my $NextToken  = $GetSessionsStatisticsAggregationResponse->NextToken;
    my $Statistics = $GetSessionsStatisticsAggregationResponse->Statistics;
    my $Status     = $GetSessionsStatisticsAggregationResponse->Status;
    my $StatusMessage =
      $GetSessionsStatisticsAggregationResponse->StatusMessage;

 # Returns a L<Paws::Deadline::GetSessionsStatisticsAggregationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetSessionsStatisticsAggregation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationId => Str

The identifier returned by the C<StartSessionsStatisticsAggregation>
operation that identifies the aggregated statistics.



=head2 B<REQUIRED> FarmId => Str

The identifier of the farm to include in the statistics. This should be
the same as the farm ID used in the call to the
C<StartSessionsStatisticsAggregation> operation.



=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSessionsStatisticsAggregation in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

