
package Paws::QConnect::UpdateSession;
  use Moose;
  has AiAgentConfiguration => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfigurationMap', traits => ['NameInRequest'], request_name => 'aiAgentConfiguration');
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has TagFilter => (is => 'ro', isa => 'Paws::QConnect::TagFilter', traits => ['NameInRequest'], request_name => 'tagFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::UpdateSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateSession - Arguments for method UpdateSession on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSession on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method UpdateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSession.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $UpdateSessionResponse = $wisdom->UpdateSession(
      AssistantId          => 'MyUuidOrArn',
      SessionId            => 'MyUuidOrArn',
      AiAgentConfiguration => {
        'MANUAL_SEARCH' => {
          AiAgentId => 'MyUuidWithQualifier',

        },    # key: values: MANUAL_SEARCH, ANSWER_RECOMMENDATION, SELF_SERVICE
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      TagFilter   => {
        AndConditions => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        OrConditions => [
          {
            AndConditions => [
              {
                Key   => 'MyTagKey',      # min: 1, max: 128
                Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
              },
              ...
            ],    # OPTIONAL
            TagCondition => {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
            },
          },
          ...
        ],    # OPTIONAL
        TagCondition => {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
      },    # OPTIONAL
    );

    # Results:
    my $Session = $UpdateSessionResponse->Session;

    # Returns a L<Paws::QConnect::UpdateSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/UpdateSession>

=head1 ATTRIBUTES


=head2 AiAgentConfiguration => L<Paws::QConnect::AIAgentConfigurationMap>

The configuration of the AI Agents (mapped by AI Agent Type to AI Agent
version) that should be used by Amazon Q in Connect for this Session.



=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 Description => Str

The description.



=head2 B<REQUIRED> SessionId => Str

The identifier of the session. Can be either the ID or the ARN. URLs
cannot contain the ARN.



=head2 TagFilter => L<Paws::QConnect::TagFilter>

An object that can be used to specify Tag conditions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSession in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

