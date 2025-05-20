
package Paws::Evidently::EvaluateFeature;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId', required => 1);
  has EvaluationContext => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationContext');
  has Feature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'feature', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateFeature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/evaluations/{feature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::EvaluateFeatureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::EvaluateFeature - Arguments for method EvaluateFeature on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluateFeature on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method EvaluateFeature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluateFeature.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $EvaluateFeatureResponse = $evidently->EvaluateFeature(
      EntityId          => 'MyEntityId',
      Feature           => 'MyFeatureName',
      Project           => 'MyProjectRef',
      EvaluationContext => 'MyJsonValue',     # OPTIONAL
    );

    # Results:
    my $Details   = $EvaluateFeatureResponse->Details;
    my $Reason    = $EvaluateFeatureResponse->Reason;
    my $Value     = $EvaluateFeatureResponse->Value;
    my $Variation = $EvaluateFeatureResponse->Variation;

    # Returns a L<Paws::Evidently::EvaluateFeatureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/EvaluateFeature>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

An internal ID that represents a unique user of the application. This
C<entityID> is checked against any override rules assigned for this
feature.



=head2 EvaluationContext => Str

A JSON object of attributes that you can optionally pass in as part of
the evaluation event sent to Evidently from the user session. Evidently
can use this value to match user sessions with defined audience
segments. For more information, see Use segments to focus your audience
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html).

If you include this parameter, the value must be a JSON object. A JSON
array is not supported.



=head2 B<REQUIRED> Feature => Str

The name of the feature being evaluated.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains this feature.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluateFeature in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

