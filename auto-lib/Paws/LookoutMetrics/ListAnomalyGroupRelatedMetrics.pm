
package Paws::LookoutMetrics::ListAnomalyGroupRelatedMetrics;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has AnomalyGroupId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RelationshipTypeFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnomalyGroupRelatedMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListAnomalyGroupRelatedMetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::ListAnomalyGroupRelatedMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyGroupRelatedMetrics - Arguments for method ListAnomalyGroupRelatedMetrics on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnomalyGroupRelatedMetrics on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method ListAnomalyGroupRelatedMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnomalyGroupRelatedMetrics.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $ListAnomalyGroupRelatedMetricsResponse =
      $lookoutmetrics->ListAnomalyGroupRelatedMetrics(
      AnomalyDetectorArn     => 'MyArn',
      AnomalyGroupId         => 'MyUUID',
      MaxResults             => 1,                                 # OPTIONAL
      NextToken              => 'MyNextToken',                     # OPTIONAL
      RelationshipTypeFilter => 'CAUSE_OF_INPUT_ANOMALY_GROUP',    # OPTIONAL
      );

    # Results:
    my $InterMetricImpactList =
      $ListAnomalyGroupRelatedMetricsResponse->InterMetricImpactList;
    my $NextToken = $ListAnomalyGroupRelatedMetricsResponse->NextToken;

# Returns a L<Paws::LookoutMetrics::ListAnomalyGroupRelatedMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/ListAnomalyGroupRelatedMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The Amazon Resource Name (ARN) of the anomaly detector.



=head2 B<REQUIRED> AnomalyGroupId => Str

The ID of the anomaly group.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 RelationshipTypeFilter => Str

Filter for potential causes (C<CAUSE_OF_INPUT_ANOMALY_GROUP>) or
downstream effects (C<EFFECT_OF_INPUT_ANOMALY_GROUP>) of the anomaly
group.

Valid values are: C<"CAUSE_OF_INPUT_ANOMALY_GROUP">, C<"EFFECT_OF_INPUT_ANOMALY_GROUP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnomalyGroupRelatedMetrics in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

