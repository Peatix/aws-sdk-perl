
package Paws::QConnect::CreateAIAgentVersion;
  use Moose;
  has AiAgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aiAgentId', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAIAgentVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiagents/{aiAgentId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateAIAgentVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIAgentVersion - Arguments for method CreateAIAgentVersion on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAIAgentVersion on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateAIAgentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAIAgentVersion.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateAIAgentVersionResponse = $wisdom->CreateAIAgentVersion(
      AiAgentId    => 'MyUuidOrArnOrEitherWithQualifier',
      AssistantId  => 'MyUuidOrArn',
      ClientToken  => 'MyClientToken',                      # OPTIONAL
      ModifiedTime => '1970-01-01T01:00:00',                # OPTIONAL
    );

    # Results:
    my $AiAgent       = $CreateAIAgentVersionResponse->AiAgent;
    my $VersionNumber = $CreateAIAgentVersionResponse->VersionNumber;

    # Returns a L<Paws::QConnect::CreateAIAgentVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAIAgentVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiAgentId => Str

The identifier of the Amazon Q in Connect AI Agent.



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

The modification time of the AI Agent should be tracked for version
creation. This field should be specified to avoid version creation when
simultaneous update to the underlying AI Agent are possible. The value
should be the modifiedTime returned from the request to create or
update an AI Agent so that version creation can fail if an update to
the AI Agent post the specified modification time has been made.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAIAgentVersion in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

