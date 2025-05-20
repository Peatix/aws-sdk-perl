
package Paws::KafkaConnect::CreateWorkerConfigurationResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has LatestRevision => (is => 'ro', isa => 'Paws::KafkaConnect::WorkerConfigurationRevisionSummary', traits => ['NameInRequest'], request_name => 'latestRevision');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has WorkerConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerConfigurationArn');
  has WorkerConfigurationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerConfigurationState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::CreateWorkerConfigurationResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the worker configuration was created.


=head2 LatestRevision => L<Paws::KafkaConnect::WorkerConfigurationRevisionSummary>

The latest revision of the worker configuration.


=head2 Name => Str

The name of the worker configuration.


=head2 WorkerConfigurationArn => Str

The Amazon Resource Name (ARN) that Amazon assigned to the worker
configuration.


=head2 WorkerConfigurationState => Str

The state of the worker configuration.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

