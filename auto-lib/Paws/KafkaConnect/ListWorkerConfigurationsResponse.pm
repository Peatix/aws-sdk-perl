
package Paws::KafkaConnect::ListWorkerConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::WorkerConfigurationSummary]', traits => ['NameInRequest'], request_name => 'workerConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListWorkerConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response of a ListWorkerConfigurations operation is truncated,
it will include a NextToken. Send this NextToken in a subsequent
request to continue listing from where the previous operation left off.


=head2 WorkerConfigurations => ArrayRef[L<Paws::KafkaConnect::WorkerConfigurationSummary>]

An array of worker configuration descriptions.


=head2 _request_id => Str


=cut

