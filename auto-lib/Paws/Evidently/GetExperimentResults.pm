
package Paws::Evidently::GetExperimentResults;
  use Moose;
  has BaseStat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseStat');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Experiment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'experiment', required => 1);
  has MetricNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'metricNames', required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has ReportNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reportNames');
  has ResultStats => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resultStats');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has TreatmentNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'treatmentNames', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExperimentResults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/experiments/{experiment}/results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::GetExperimentResultsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetExperimentResults - Arguments for method GetExperimentResults on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExperimentResults on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method GetExperimentResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExperimentResults.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $GetExperimentResultsResponse = $evidently->GetExperimentResults(
      Experiment  => 'MyExperimentName',
      MetricNames => [
        'MyCwDimensionSafeName', ...    # min: 1, max: 255
      ],
      Project        => 'MyProjectRef',
      TreatmentNames => [
        'MyTreatmentName', ...          # min: 1, max: 127
      ],
      BaseStat    => 'Mean',                   # OPTIONAL
      EndTime     => '1970-01-01T01:00:00',    # OPTIONAL
      Period      => 1,                        # OPTIONAL
      ReportNames => [
        'BayesianInference', ...               # values: BayesianInference
      ],    # OPTIONAL
      ResultStats => [
        'BaseStat',
        ...    # values: BaseStat, TreatmentEffect, ConfidenceInterval, PValue
      ],    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Details     = $GetExperimentResultsResponse->Details;
    my $Reports     = $GetExperimentResultsResponse->Reports;
    my $ResultsData = $GetExperimentResultsResponse->ResultsData;
    my $Timestamps  = $GetExperimentResultsResponse->Timestamps;

    # Returns a L<Paws::Evidently::GetExperimentResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/GetExperimentResults>

=head1 ATTRIBUTES


=head2 BaseStat => Str

The statistic used to calculate experiment results. Currently the only
valid value is C<mean>, which uses the mean of the collected values as
the statistic.

Valid values are: C<"Mean">

=head2 EndTime => Str

The date and time that the experiment ended, if it is completed. This
must be no longer than 30 days after the experiment start time.



=head2 B<REQUIRED> Experiment => Str

The name of the experiment to retrieve the results of.



=head2 B<REQUIRED> MetricNames => ArrayRef[Str|Undef]

The names of the experiment metrics that you want to see the results
of.



=head2 Period => Int

In seconds, the amount of time to aggregate results together.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the experiment that you
want to see the results of.



=head2 ReportNames => ArrayRef[Str|Undef]

The names of the report types that you want to see. Currently,
C<BayesianInference> is the only valid value.



=head2 ResultStats => ArrayRef[Str|Undef]

The statistics that you want to see in the returned results.

=over

=item *

C<PValue> specifies to use p-values for the results. A p-value is used
in hypothesis testing to measure how often you are willing to make a
mistake in rejecting the null hypothesis. A general practice is to
reject the null hypothesis and declare that the results are
statistically significant when the p-value is less than 0.05.

=item *

C<ConfidenceInterval> specifies a confidence interval for the results.
The confidence interval represents the range of values for the chosen
metric that is likely to contain the true difference between the
C<baseStat> of a variation and the baseline. Evidently returns the 95%
confidence interval.

=item *

C<TreatmentEffect> is the difference in the statistic specified by the
C<baseStat> parameter between each variation and the default variation.

=item *

C<BaseStat> returns the statistical values collected for the metric for
each variation. The statistic uses the same statistic specified in the
C<baseStat> parameter. Therefore, if C<baseStat> is C<mean>, this
returns the mean of the values collected for each variation.

=back




=head2 StartTime => Str

The date and time that the experiment started.



=head2 B<REQUIRED> TreatmentNames => ArrayRef[Str|Undef]

The names of the experiment treatments that you want to see the results
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExperimentResults in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

