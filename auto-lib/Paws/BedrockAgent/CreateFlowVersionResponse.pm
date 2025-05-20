
package Paws::BedrockAgent::CreateFlowVersionResponse;
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
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateFlowVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the flow was created.


=head2 CustomerEncryptionKeyArn => Str

The KMS key that the flow is encrypted with.


=head2 Definition => L<Paws::BedrockAgent::FlowDefinition>

A definition of the nodes and connections in the flow.


=head2 Description => Str

The description of the version.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the service role with permissions to
create a flow. For more information, see Create a service role for
flows in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html)
in the Amazon Bedrock User Guide.


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 B<REQUIRED> Name => Str

The name of the version.


=head2 B<REQUIRED> Status => Str

The status of the flow.

Valid values are: C<"Failed">, C<"Prepared">, C<"Preparing">, C<"NotPrepared">
=head2 B<REQUIRED> Version => Str

The version of the flow that was created. Versions are numbered
incrementally, starting from 1.


=head2 _request_id => Str


=cut

