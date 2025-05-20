
package Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetrics;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has RecommendationPreferences => (is => 'ro', isa => 'Paws::ComputeOptimizer::RecommendationPreferences', traits => ['NameInRequest'], request_name => 'recommendationPreferences' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Stat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stat' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRDSDatabaseRecommendationProjectedMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetrics - Arguments for method GetRDSDatabaseRecommendationProjectedMetrics on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRDSDatabaseRecommendationProjectedMetrics on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetRDSDatabaseRecommendationProjectedMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRDSDatabaseRecommendationProjectedMetrics.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetRDSDatabaseRecommendationProjectedMetricsResponse =
      $compute -optimizer->GetRDSDatabaseRecommendationProjectedMetrics(
      EndTime                   => '1970-01-01T01:00:00',
      Period                    => 1,
      ResourceArn               => 'MyResourceArn',
      StartTime                 => '1970-01-01T01:00:00',
      Stat                      => 'Maximum',
      RecommendationPreferences => {
        CpuVendorArchitectures => [
          'AWS_ARM64', ...    # values: AWS_ARM64, CURRENT
        ],    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $RecommendedOptionProjectedMetrics =
      $GetRDSDatabaseRecommendationProjectedMetricsResponse
      ->RecommendedOptionProjectedMetrics;

# Returns a L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetRDSDatabaseRecommendationProjectedMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The timestamp of the last projected metrics data point to return.



=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the projected metrics data points.



=head2 RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>





=head2 B<REQUIRED> ResourceArn => Str

The ARN that identifies the Amazon RDS.

The following is the format of the ARN:

C<arn:aws:rds:{region}:{accountId}:db:{resourceName}>



=head2 B<REQUIRED> StartTime => Str

The timestamp of the first projected metrics data point to return.



=head2 B<REQUIRED> Stat => Str

The statistic of the projected metrics.

Valid values are: C<"Maximum">, C<"Average">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRDSDatabaseRecommendationProjectedMetrics in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

