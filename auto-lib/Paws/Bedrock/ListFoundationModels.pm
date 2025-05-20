
package Paws::Bedrock::ListFoundationModels;
  use Moose;
  has ByCustomizationType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'byCustomizationType');
  has ByInferenceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'byInferenceType');
  has ByOutputModality => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'byOutputModality');
  has ByProvider => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'byProvider');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFoundationModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/foundation-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListFoundationModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListFoundationModels - Arguments for method ListFoundationModels on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFoundationModels on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListFoundationModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFoundationModels.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListFoundationModelsResponse = $bedrock->ListFoundationModels(
      ByCustomizationType => 'FINE_TUNING',    # OPTIONAL
      ByInferenceType     => 'ON_DEMAND',      # OPTIONAL
      ByOutputModality    => 'TEXT',           # OPTIONAL
      ByProvider          => 'MyProvider',     # OPTIONAL
    );

    # Results:
    my $ModelSummaries = $ListFoundationModelsResponse->ModelSummaries;

    # Returns a L<Paws::Bedrock::ListFoundationModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListFoundationModels>

=head1 ATTRIBUTES


=head2 ByCustomizationType => Str

Return models that support the customization type that you specify. For
more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).

Valid values are: C<"FINE_TUNING">, C<"CONTINUED_PRE_TRAINING">, C<"DISTILLATION">

=head2 ByInferenceType => Str

Return models that support the inference type that you specify. For
more information, see Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
in the Amazon Bedrock User Guide
(https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).

Valid values are: C<"ON_DEMAND">, C<"PROVISIONED">

=head2 ByOutputModality => Str

Return models that support the output modality that you specify.

Valid values are: C<"TEXT">, C<"IMAGE">, C<"EMBEDDING">

=head2 ByProvider => Str

Return models belonging to the model provider that you specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFoundationModels in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

