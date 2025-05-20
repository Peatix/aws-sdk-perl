
package Paws::Bedrock::GetModelCopyJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has SourceAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceAccountId', required => 1);
  has SourceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceModelArn', required => 1);
  has SourceModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceModelName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TargetModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetModelArn', required => 1);
  has TargetModelKmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetModelKmsKeyArn');
  has TargetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetModelName');
  has TargetModelTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'targetModelTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelCopyJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time at which the model copy job was created.


=head2 FailureMessage => Str

An error message for why the model copy job failed.


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the model copy job.


=head2 B<REQUIRED> SourceAccountId => Str

The unique identifier of the account that the model being copied
originated from.


=head2 B<REQUIRED> SourceModelArn => Str

The Amazon Resource Name (ARN) of the original model being copied.


=head2 SourceModelName => Str

The name of the original model being copied.


=head2 B<REQUIRED> Status => Str

The status of the model copy job.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">
=head2 B<REQUIRED> TargetModelArn => Str

The Amazon Resource Name (ARN) of the copied model.


=head2 TargetModelKmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key encrypting the copied
model.


=head2 TargetModelName => Str

The name of the copied model.


=head2 TargetModelTags => ArrayRef[L<Paws::Bedrock::Tag>]

The tags associated with the copied model.


=head2 _request_id => Str


=cut

