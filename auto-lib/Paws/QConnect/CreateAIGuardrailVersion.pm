
package Paws::QConnect::CreateAIGuardrailVersion;
  use Moose;
  has AiGuardrailId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aiGuardrailId', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAIGuardrailVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateAIGuardrailVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIGuardrailVersion - Arguments for method CreateAIGuardrailVersion on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAIGuardrailVersion on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateAIGuardrailVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAIGuardrailVersion.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateAIGuardrailVersionResponse = $wisdom->CreateAIGuardrailVersion(
      AiGuardrailId => 'MyUuidOrArnOrEitherWithQualifier',
      AssistantId   => 'MyUuidOrArn',
      ClientToken   => 'MyClientToken',                      # OPTIONAL
      ModifiedTime  => '1970-01-01T01:00:00',                # OPTIONAL
    );

    # Results:
    my $AiGuardrail   = $CreateAIGuardrailVersionResponse->AiGuardrail;
    my $VersionNumber = $CreateAIGuardrailVersionResponse->VersionNumber;

    # Returns a L<Paws::QConnect::CreateAIGuardrailVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAIGuardrailVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiGuardrailId => Str

The identifier of the Amazon Q in Connect AI Guardrail.



=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)..



=head2 ModifiedTime => Str

The time the AI Guardrail was last modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAIGuardrailVersion in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

