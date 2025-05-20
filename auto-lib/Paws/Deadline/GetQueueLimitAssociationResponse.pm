
package Paws::Deadline::GetQueueLimitAssociationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has LimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'limitId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueueLimitAssociationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The Unix timestamp of the date and time that the association was
created.


=head2 B<REQUIRED> CreatedBy => Str

The user identifier of the person that created the association.


=head2 B<REQUIRED> LimitId => Str

The unique identifier of the limit associated with the queue.


=head2 B<REQUIRED> QueueId => Str

The unique identifier of the queue associated with the limit.


=head2 B<REQUIRED> Status => Str

The current status of the limit.

Valid values are: C<"ACTIVE">, C<"STOP_LIMIT_USAGE_AND_COMPLETE_TASKS">, C<"STOP_LIMIT_USAGE_AND_CANCEL_TASKS">, C<"STOPPED">
=head2 UpdatedAt => Str

The Unix timestamp of the date and time that the association was last
updated.


=head2 UpdatedBy => Str

The user identifier of the person that last updated the association.


=head2 _request_id => Str


=cut

