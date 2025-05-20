
package Paws::Omics::StartRunResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has RunOutputUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runOutputUri');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartRunResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique resource identifier for the run.


=head2 Id => Str

The run's ID.


=head2 RunOutputUri => Str

The destination for workflow outputs.


=head2 Status => Str

The run's status.

Valid values are: C<"PENDING">, C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"COMPLETED">, C<"DELETED">, C<"CANCELLED">, C<"FAILED">
=head2 Tags => L<Paws::Omics::TagMap>

The run's tags.


=head2 Uuid => Str

The universally unique identifier for a run.


=head2 _request_id => Str


=cut

