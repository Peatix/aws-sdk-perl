
package Paws::LookoutMetrics::UpdateAlert;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::LookoutMetrics::Action');
  has AlertArn => (is => 'ro', isa => 'Str', required => 1);
  has AlertDescription => (is => 'ro', isa => 'Str');
  has AlertFilters => (is => 'ro', isa => 'Paws::LookoutMetrics::AlertFilters');
  has AlertSensitivityThreshold => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAlert');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateAlert');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::UpdateAlertResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::UpdateAlert - Arguments for method UpdateAlert on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAlert on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method UpdateAlert.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAlert.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $UpdateAlertResponse = $lookoutmetrics->UpdateAlert(
      AlertArn => 'MyArn',
      Action   => {
        LambdaConfiguration => {
          LambdaArn => 'MyArn',    # max: 256
          RoleArn   => 'MyArn',    # max: 256

        },    # OPTIONAL
        SNSConfiguration => {
          RoleArn     => 'MyArn',    # max: 256
          SnsTopicArn => 'MyArn',    # max: 256
          SnsFormat   =>
            'LONG_TEXT',    # values: LONG_TEXT, SHORT_TEXT, JSON; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AlertDescription => 'MyAlertDescription',    # OPTIONAL
      AlertFilters     => {
        DimensionFilterList => [
          {
            DimensionName      => 'MyColumnName',    # min: 1, max: 63; OPTIONAL
            DimensionValueList => [ 'MyDimensionValue', ... ]
            ,                                        # min: 1, max: 10; OPTIONAL
          },
          ...
        ],    # min: 1, max: 5; OPTIONAL
        MetricList => [
          'MyMetricName', ...    # max: 256
        ],    # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
      AlertSensitivityThreshold => 1,    # OPTIONAL
    );

    # Results:
    my $AlertArn = $UpdateAlertResponse->AlertArn;

    # Returns a L<Paws::LookoutMetrics::UpdateAlertResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/UpdateAlert>

=head1 ATTRIBUTES


=head2 Action => L<Paws::LookoutMetrics::Action>

Action that will be triggered when there is an alert.



=head2 B<REQUIRED> AlertArn => Str

The ARN of the alert to update.



=head2 AlertDescription => Str

A description of the alert.



=head2 AlertFilters => L<Paws::LookoutMetrics::AlertFilters>

The configuration of the alert filters, containing MetricList and
DimensionFilterList.



=head2 AlertSensitivityThreshold => Int

An integer from 0 to 100 specifying the alert sensitivity threshold.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAlert in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

