
package Paws::Personalize::ListMetricAttributionMetrics;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has MetricAttributionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricAttributionArn' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetricAttributionMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListMetricAttributionMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListMetricAttributionMetrics - Arguments for method ListMetricAttributionMetrics on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetricAttributionMetrics on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListMetricAttributionMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetricAttributionMetrics.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListMetricAttributionMetricsResponse =
      $personalize->ListMetricAttributionMetrics(
      MaxResults           => 1,                # OPTIONAL
      MetricAttributionArn => 'MyArn',          # OPTIONAL
      NextToken            => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Metrics   = $ListMetricAttributionMetricsResponse->Metrics;
    my $NextToken = $ListMetricAttributionMetricsResponse->NextToken;

  # Returns a L<Paws::Personalize::ListMetricAttributionMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListMetricAttributionMetrics>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of metrics to return in one page of results.



=head2 MetricAttributionArn => Str

The Amazon Resource Name (ARN) of the metric attribution to retrieve
attributes for.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetricAttributionMetrics in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

