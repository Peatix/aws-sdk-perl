
package Paws::BedrockRuntime::ApplyGuardrail;
  use Moose;
  has Content => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::GuardrailContentBlock]', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailIdentifier', required => 1);
  has GuardrailVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailVersion', required => 1);
  has OutputScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputScope');
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplyGuardrail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrail/{guardrailIdentifier}/version/{guardrailVersion}/apply');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::ApplyGuardrailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ApplyGuardrail - Arguments for method ApplyGuardrail on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyGuardrail on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method ApplyGuardrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyGuardrail.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $ApplyGuardrailResponse = $bedrock -runtime->ApplyGuardrail(
      Content => [
        {
          Image => {
            Format => 'png',    # values: png, jpeg
            Source => {
              Bytes => 'BlobGuardrailImageSourceBytesBlob',   # min: 1; OPTIONAL
            },

          },    # OPTIONAL
          Text => {
            Text       => 'MyString',
            Qualifiers => [
              'grounding_source',
              ...    # values: grounding_source, query, guard_content
            ],    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      GuardrailIdentifier => 'MyGuardrailIdentifier',
      GuardrailVersion    => 'MyGuardrailVersion',
      Source              => 'INPUT',
      OutputScope         => 'INTERVENTIONS',           # OPTIONAL
    );

    # Results:
    my $Action            = $ApplyGuardrailResponse->Action;
    my $ActionReason      = $ApplyGuardrailResponse->ActionReason;
    my $Assessments       = $ApplyGuardrailResponse->Assessments;
    my $GuardrailCoverage = $ApplyGuardrailResponse->GuardrailCoverage;
    my $Outputs           = $ApplyGuardrailResponse->Outputs;
    my $Usage             = $ApplyGuardrailResponse->Usage;

    # Returns a L<Paws::BedrockRuntime::ApplyGuardrailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/ApplyGuardrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => ArrayRef[L<Paws::BedrockRuntime::GuardrailContentBlock>]

The content details used in the request to apply the guardrail.



=head2 B<REQUIRED> GuardrailIdentifier => Str

The guardrail identifier used in the request to apply the guardrail.



=head2 B<REQUIRED> GuardrailVersion => Str

The guardrail version used in the request to apply the guardrail.



=head2 OutputScope => Str

Specifies the scope of the output that you get in the response. Set to
C<FULL> to return the entire output, including any detected and
non-detected entries in the response for enhanced debugging.

Note that the full output scope doesn't apply to word filters or regex
in sensitive information filters. It does apply to all other filtering
policies, including sensitive information with filters that can detect
personally identifiable information (PII).

Valid values are: C<"INTERVENTIONS">, C<"FULL">

=head2 B<REQUIRED> Source => Str

The source of data used in the request to apply the guardrail.

Valid values are: C<"INPUT">, C<"OUTPUT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyGuardrail in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

