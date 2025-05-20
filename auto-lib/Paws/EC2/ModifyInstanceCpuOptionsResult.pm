
package Paws::EC2::ModifyInstanceCpuOptionsResult;
  use Moose;
  has CoreCount => (is => 'ro', isa => 'Int', request_name => 'coreCount', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has ThreadsPerCore => (is => 'ro', isa => 'Int', request_name => 'threadsPerCore', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCpuOptionsResult

=head1 ATTRIBUTES


=head2 CoreCount => Int

The number of CPU cores that are running for the specified instance
after the update.


=head2 InstanceId => Str

The ID of the instance that was updated.


=head2 ThreadsPerCore => Int

The number of threads that are running per CPU core for the specified
instance after the update.


=head2 _request_id => Str


=cut

