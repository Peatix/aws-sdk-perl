
package Paws::Tnb::GetSolNetworkOperationOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Error => (is => 'ro', isa => 'Paws::Tnb::ProblemDetails', traits => ['NameInRequest'], request_name => 'error');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LcmOperationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lcmOperationType');
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::GetSolNetworkOperationMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsInstanceId');
  has OperationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationState');
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::GetSolNetworkOperationTaskDetails]', traits => ['NameInRequest'], request_name => 'tasks');
  has UpdateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkOperationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network operation ARN.


=head2 Error => L<Paws::Tnb::ProblemDetails>

Error related to this specific network operation occurrence.


=head2 Id => Str

ID of this network operation occurrence.


=head2 LcmOperationType => Str

Type of the operation represented by this occurrence.

Valid values are: C<"INSTANTIATE">, C<"UPDATE">, C<"TERMINATE">
=head2 Metadata => L<Paws::Tnb::GetSolNetworkOperationMetadata>

Metadata of this network operation occurrence.


=head2 NsInstanceId => Str

ID of the network operation instance.


=head2 OperationState => Str

The state of the network operation.

Valid values are: C<"PROCESSING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">
=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 Tasks => ArrayRef[L<Paws::Tnb::GetSolNetworkOperationTaskDetails>]

All tasks associated with this operation occurrence.


=head2 UpdateType => Str

Type of the update. Only present if the network operation
lcmOperationType is C<UPDATE>.

Valid values are: C<"MODIFY_VNF_INFORMATION">, C<"UPDATE_NS">
=head2 _request_id => Str


=cut

