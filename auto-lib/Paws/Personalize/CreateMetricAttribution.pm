
package Paws::Personalize::CreateMetricAttribution;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' , required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::MetricAttribute]', traits => ['NameInRequest'], request_name => 'metrics' , required => 1);
  has MetricsOutputConfig => (is => 'ro', isa => 'Paws::Personalize::MetricAttributionOutput', traits => ['NameInRequest'], request_name => 'metricsOutputConfig' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMetricAttribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateMetricAttributionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateMetricAttribution - Arguments for method CreateMetricAttribution on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMetricAttribution on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateMetricAttribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMetricAttribution.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateMetricAttributionResponse = $personalize->CreateMetricAttribution(
      DatasetGroupArn => 'MyArn',
      Metrics         => [
        {
          EventType  => 'MyEventType',           # max: 256
          Expression => 'MyMetricExpression',    # max: 256
          MetricName => 'MyMetricName',          # max: 256

        },
        ...
      ],
      MetricsOutputConfig => {
        RoleArn           => 'MyRoleArn',        # max: 256
        S3DataDestination => {
          Path      => 'MyS3Location',           # max: 256
          KmsKeyArn => 'MyKmsKeyArn',            # max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      Name => 'MyName',

    );

    # Results:
    my $MetricAttributionArn =
      $CreateMetricAttributionResponse->MetricAttributionArn;

    # Returns a L<Paws::Personalize::CreateMetricAttributionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateMetricAttribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the destination dataset group for the
metric attribution.



=head2 B<REQUIRED> Metrics => ArrayRef[L<Paws::Personalize::MetricAttribute>]

A list of metric attributes for the metric attribution. Each metric
attribute specifies an event type to track and a function. Available
functions are C<SUM()> or C<SAMPLECOUNT()>. For SUM() functions,
provide the dataset type (either Interactions or Items) and column to
sum as a parameter. For example SUM(Items.PRICE).



=head2 B<REQUIRED> MetricsOutputConfig => L<Paws::Personalize::MetricAttributionOutput>

The output configuration details for the metric attribution.



=head2 B<REQUIRED> Name => Str

A name for the metric attribution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMetricAttribution in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

