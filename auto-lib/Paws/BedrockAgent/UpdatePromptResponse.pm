
package Paws::BedrockAgent::UpdatePromptResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has DefaultVariant => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVariant');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has Variants => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::PromptVariant]', traits => ['NameInRequest'], request_name => 'variants');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdatePromptResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the prompt.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the prompt was created.


=head2 CustomerEncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.


=head2 DefaultVariant => Str

The name of the default variant for the prompt. This value must match
the C<name> field in the relevant PromptVariant
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html)
object.


=head2 Description => Str

The description of the prompt.


=head2 B<REQUIRED> Id => Str

The unique identifier of the prompt.


=head2 B<REQUIRED> Name => Str

The name of the prompt.


=head2 B<REQUIRED> UpdatedAt => Str

The time at which the prompt was last updated.


=head2 Variants => ArrayRef[L<Paws::BedrockAgent::PromptVariant>]

A list of objects, each containing details about a variant of the
prompt.


=head2 B<REQUIRED> Version => Str

The version of the prompt. When you update a prompt, the version
updated is the C<DRAFT> version.


=head2 _request_id => Str


=cut

