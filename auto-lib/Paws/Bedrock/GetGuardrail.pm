
package Paws::Bedrock::GetGuardrail;
  use Moose;
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailIdentifier', required => 1);
  has GuardrailVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'guardrailVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGuardrail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrails/{guardrailIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetGuardrailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetGuardrail - Arguments for method GetGuardrail on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGuardrail on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetGuardrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGuardrail.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetGuardrailResponse = $bedrock->GetGuardrail(
      GuardrailIdentifier => 'MyGuardrailIdentifier',
      GuardrailVersion    => 'MyGuardrailVersion',      # OPTIONAL
    );

    # Results:
    my $BlockedInputMessaging = $GetGuardrailResponse->BlockedInputMessaging;
    my $BlockedOutputsMessaging =
      $GetGuardrailResponse->BlockedOutputsMessaging;
    my $ContentPolicy = $GetGuardrailResponse->ContentPolicy;
    my $ContextualGroundingPolicy =
      $GetGuardrailResponse->ContextualGroundingPolicy;
    my $CreatedAt              = $GetGuardrailResponse->CreatedAt;
    my $CrossRegionDetails     = $GetGuardrailResponse->CrossRegionDetails;
    my $Description            = $GetGuardrailResponse->Description;
    my $FailureRecommendations = $GetGuardrailResponse->FailureRecommendations;
    my $GuardrailArn           = $GetGuardrailResponse->GuardrailArn;
    my $GuardrailId            = $GetGuardrailResponse->GuardrailId;
    my $KmsKeyArn              = $GetGuardrailResponse->KmsKeyArn;
    my $Name                   = $GetGuardrailResponse->Name;
    my $SensitiveInformationPolicy =
      $GetGuardrailResponse->SensitiveInformationPolicy;
    my $Status        = $GetGuardrailResponse->Status;
    my $StatusReasons = $GetGuardrailResponse->StatusReasons;
    my $TopicPolicy   = $GetGuardrailResponse->TopicPolicy;
    my $UpdatedAt     = $GetGuardrailResponse->UpdatedAt;
    my $Version       = $GetGuardrailResponse->Version;
    my $WordPolicy    = $GetGuardrailResponse->WordPolicy;

    # Returns a L<Paws::Bedrock::GetGuardrailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetGuardrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GuardrailIdentifier => Str

The unique identifier of the guardrail for which to get details. This
can be an ID or the ARN.



=head2 GuardrailVersion => Str

The version of the guardrail for which to get details. If you don't
specify a version, the response returns details for the C<DRAFT>
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGuardrail in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

