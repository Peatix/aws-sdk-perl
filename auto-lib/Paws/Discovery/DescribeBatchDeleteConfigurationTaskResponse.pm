
package Paws::Discovery::DescribeBatchDeleteConfigurationTaskResponse;
  use Moose;
  has Task => (is => 'ro', isa => 'Paws::Discovery::BatchDeleteConfigurationTask', traits => ['NameInRequest'], request_name => 'task' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeBatchDeleteConfigurationTaskResponse

=head1 ATTRIBUTES


=head2 Task => L<Paws::Discovery::BatchDeleteConfigurationTask>

The C<BatchDeleteConfigurationTask> that represents the deletion task
being executed.


=head2 _request_id => Str


=cut

1;