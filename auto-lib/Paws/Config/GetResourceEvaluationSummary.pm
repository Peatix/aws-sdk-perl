
package Paws::Config::GetResourceEvaluationSummary;
  use Moose;
  has ResourceEvaluationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceEvaluationSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetResourceEvaluationSummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetResourceEvaluationSummary - Arguments for method GetResourceEvaluationSummary on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceEvaluationSummary on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetResourceEvaluationSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceEvaluationSummary.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetResourceEvaluationSummaryResponse =
      $config->GetResourceEvaluationSummary(
      ResourceEvaluationId => 'MyResourceEvaluationId',

      );

    # Results:
    my $Compliance = $GetResourceEvaluationSummaryResponse->Compliance;
    my $EvaluationContext =
      $GetResourceEvaluationSummaryResponse->EvaluationContext;
    my $EvaluationMode = $GetResourceEvaluationSummaryResponse->EvaluationMode;
    my $EvaluationStartTimestamp =
      $GetResourceEvaluationSummaryResponse->EvaluationStartTimestamp;
    my $EvaluationStatus =
      $GetResourceEvaluationSummaryResponse->EvaluationStatus;
    my $ResourceDetails =
      $GetResourceEvaluationSummaryResponse->ResourceDetails;
    my $ResourceEvaluationId =
      $GetResourceEvaluationSummaryResponse->ResourceEvaluationId;

    # Returns a L<Paws::Config::GetResourceEvaluationSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetResourceEvaluationSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceEvaluationId => Str

The unique C<ResourceEvaluationId> of Amazon Web Services resource
execution for which you want to retrieve the evaluation summary.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceEvaluationSummary in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

