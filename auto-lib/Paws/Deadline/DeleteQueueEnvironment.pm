
package Paws::Deadline::DeleteQueueEnvironment;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has QueueEnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueEnvironmentId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueueEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::DeleteQueueEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::DeleteQueueEnvironment - Arguments for method DeleteQueueEnvironment on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQueueEnvironment on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method DeleteQueueEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQueueEnvironment.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $DeleteQueueEnvironmentResponse = $deadline->DeleteQueueEnvironment(
      FarmId             => 'MyFarmId',
      QueueEnvironmentId => 'MyQueueEnvironmentId',
      QueueId            => 'MyQueueId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/DeleteQueueEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm from which to remove the queue environment.



=head2 B<REQUIRED> QueueEnvironmentId => Str

The queue environment ID of the queue environment to delete.



=head2 B<REQUIRED> QueueId => Str

The queue ID of the queue environment to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQueueEnvironment in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

