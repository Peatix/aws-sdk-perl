
package Paws::Omics::CreateWorkflowResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateWorkflowResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The workflow's ARN.


=head2 Id => Str

The workflow's ID.


=head2 Status => Str

The workflow's status.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETED">, C<"FAILED">, C<"INACTIVE">
=head2 Tags => L<Paws::Omics::TagMap>

The workflow's tags.


=head2 Uuid => Str

The universally unique identifier (UUID) value for this workflow.


=head2 _request_id => Str


=cut

