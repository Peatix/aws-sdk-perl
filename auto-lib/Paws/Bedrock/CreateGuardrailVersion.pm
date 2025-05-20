
package Paws::Bedrock::CreateGuardrailVersion;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGuardrailVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrails/{guardrailIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateGuardrailVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateGuardrailVersion - Arguments for method CreateGuardrailVersion on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGuardrailVersion on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateGuardrailVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGuardrailVersion.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateGuardrailVersionResponse = $bedrock->CreateGuardrailVersion(
      GuardrailIdentifier => 'MyGuardrailIdentifier',
      ClientRequestToken  => 'MyIdempotencyToken',        # OPTIONAL
      Description         => 'MyGuardrailDescription',    # OPTIONAL
    );

    # Results:
    my $GuardrailId = $CreateGuardrailVersionResponse->GuardrailId;
    my $Version     = $CreateGuardrailVersionResponse->Version;

    # Returns a L<Paws::Bedrock::CreateGuardrailVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateGuardrailVersion>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than once. If this token matches a previous request,
Amazon Bedrock ignores the request, but does not return an error. For
more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon S3 User Guide>.



=head2 Description => Str

A description of the guardrail version.



=head2 B<REQUIRED> GuardrailIdentifier => Str

The unique identifier of the guardrail. This can be an ID or the ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGuardrailVersion in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

