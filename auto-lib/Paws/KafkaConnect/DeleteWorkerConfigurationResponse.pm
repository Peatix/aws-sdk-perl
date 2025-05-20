
package Paws::KafkaConnect::DeleteWorkerConfigurationResponse;
  use Moose;
  has WorkerConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerConfigurationArn');
  has WorkerConfigurationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerConfigurationState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DeleteWorkerConfigurationResponse

=head1 ATTRIBUTES


=head2 WorkerConfigurationArn => Str

The Amazon Resource Name (ARN) of the worker configuration that you
requested to delete.


=head2 WorkerConfigurationState => Str

The state of the worker configuration.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

