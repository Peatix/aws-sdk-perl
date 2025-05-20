
package Paws::Bedrock::GetGuardrailResponse;
  use Moose;
  has BlockedInputMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedInputMessaging', required => 1);
  has BlockedOutputsMessaging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedOutputsMessaging', required => 1);
  has ContentPolicy => (is => 'ro', isa => 'Paws::Bedrock::GuardrailContentPolicy', traits => ['NameInRequest'], request_name => 'contentPolicy');
  has ContextualGroundingPolicy => (is => 'ro', isa => 'Paws::Bedrock::GuardrailContextualGroundingPolicy', traits => ['NameInRequest'], request_name => 'contextualGroundingPolicy');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CrossRegionDetails => (is => 'ro', isa => 'Paws::Bedrock::GuardrailCrossRegionDetails', traits => ['NameInRequest'], request_name => 'crossRegionDetails');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureRecommendations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureRecommendations');
  has GuardrailArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailArn', required => 1);
  has GuardrailId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailId', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SensitiveInformationPolicy => (is => 'ro', isa => 'Paws::Bedrock::GuardrailSensitiveInformationPolicy', traits => ['NameInRequest'], request_name => 'sensitiveInformationPolicy');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statusReasons');
  has TopicPolicy => (is => 'ro', isa => 'Paws::Bedrock::GuardrailTopicPolicy', traits => ['NameInRequest'], request_name => 'topicPolicy');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);
  has WordPolicy => (is => 'ro', isa => 'Paws::Bedrock::GuardrailWordPolicy', traits => ['NameInRequest'], request_name => 'wordPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetGuardrailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockedInputMessaging => Str

The message that the guardrail returns when it blocks a prompt.


=head2 B<REQUIRED> BlockedOutputsMessaging => Str

The message that the guardrail returns when it blocks a model response.


=head2 ContentPolicy => L<Paws::Bedrock::GuardrailContentPolicy>

The content policy that was configured for the guardrail.


=head2 ContextualGroundingPolicy => L<Paws::Bedrock::GuardrailContextualGroundingPolicy>

The contextual grounding policy used in the guardrail.


=head2 B<REQUIRED> CreatedAt => Str

The date and time at which the guardrail was created.


=head2 CrossRegionDetails => L<Paws::Bedrock::GuardrailCrossRegionDetails>

Details about the system-defined guardrail profile that you're using
with your guardrail, including the guardrail profile ID and Amazon
Resource Name (ARN).


=head2 Description => Str

The description of the guardrail.


=head2 FailureRecommendations => ArrayRef[Str|Undef]

Appears if the C<status> of the guardrail is C<FAILED>. A list of
recommendations to carry out before retrying the request.


=head2 B<REQUIRED> GuardrailArn => Str

The ARN of the guardrail.


=head2 B<REQUIRED> GuardrailId => Str

The unique identifier of the guardrail.


=head2 KmsKeyArn => Str

The ARN of the KMS key that encrypts the guardrail.


=head2 B<REQUIRED> Name => Str

The name of the guardrail.


=head2 SensitiveInformationPolicy => L<Paws::Bedrock::GuardrailSensitiveInformationPolicy>

The sensitive information policy that was configured for the guardrail.


=head2 B<REQUIRED> Status => Str

The status of the guardrail.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"VERSIONING">, C<"READY">, C<"FAILED">, C<"DELETING">
=head2 StatusReasons => ArrayRef[Str|Undef]

Appears if the C<status> is C<FAILED>. A list of reasons for why the
guardrail failed to be created, updated, versioned, or deleted.


=head2 TopicPolicy => L<Paws::Bedrock::GuardrailTopicPolicy>

The topic policy that was configured for the guardrail.


=head2 B<REQUIRED> UpdatedAt => Str

The date and time at which the guardrail was updated.


=head2 B<REQUIRED> Version => Str

The version of the guardrail.


=head2 WordPolicy => L<Paws::Bedrock::GuardrailWordPolicy>

The word policy that was configured for the guardrail.


=head2 _request_id => Str


=cut

