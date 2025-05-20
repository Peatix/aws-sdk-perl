
package Paws::BedrockAgent::GetFlowResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has Definition => (is => 'ro', isa => 'Paws::BedrockAgent::FlowDefinition', traits => ['NameInRequest'], request_name => 'definition');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has Validations => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::FlowValidation]', traits => ['NameInRequest'], request_name => 'validations');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetFlowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the flow was created.


=head2 CustomerEncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key that the flow is
encrypted with.


=head2 Definition => L<Paws::BedrockAgent::FlowDefinition>

The definition of the nodes and connections between the nodes in the
flow.


=head2 Description => Str

The description of the flow.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the service role with permissions to
create a flow. For more information, see Create a service row for flows
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html)
in the Amazon Bedrock User Guide.


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 B<REQUIRED> Name => Str

The name of the flow.


=head2 B<REQUIRED> Status => Str

The status of the flow. The following statuses are possible:

=over

=item *

NotPrepared E<ndash> The flow has been created or updated, but hasn't
been prepared. If you just created the flow, you can't test it. If you
updated the flow, the C<DRAFT> version won't contain the latest changes
for testing. Send a PrepareFlow
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html)
request to package the latest changes into the C<DRAFT> version.

=item *

Preparing E<ndash> The flow is being prepared so that the C<DRAFT>
version contains the latest changes for testing.

=item *

Prepared E<ndash> The flow is prepared and the C<DRAFT> version
contains the latest changes for testing.

=item *

Failed E<ndash> The last API operation that you invoked on the flow
failed. Send a GetFlow
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html)
request and check the error message in the C<validations> field.

=back


Valid values are: C<"Failed">, C<"Prepared">, C<"Preparing">, C<"NotPrepared">
=head2 B<REQUIRED> UpdatedAt => Str

The time at which the flow was last updated.


=head2 Validations => ArrayRef[L<Paws::BedrockAgent::FlowValidation>]

A list of validation error messages related to the last failed
operation on the flow.


=head2 B<REQUIRED> Version => Str

The version of the flow for which information was retrieved.


=head2 _request_id => Str


=cut

