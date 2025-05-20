
package Paws::Deadline::CreateQueueEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueueEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateQueueEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateQueueEnvironment - Arguments for method CreateQueueEnvironment on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueueEnvironment on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateQueueEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueueEnvironment.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateQueueEnvironmentResponse = $deadline->CreateQueueEnvironment(
      FarmId       => 'MyFarmId',
      Priority     => 1,
      QueueId      => 'MyQueueId',
      Template     => 'MyEnvironmentTemplate',
      TemplateType => 'JSON',
      ClientToken  => 'MyClientToken',           # OPTIONAL
    );

    # Results:
    my $QueueEnvironmentId =
      $CreateQueueEnvironmentResponse->QueueEnvironmentId;

    # Returns a L<Paws::Deadline::CreateQueueEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateQueueEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the environment.



=head2 B<REQUIRED> Priority => Int

Sets the priority of the environments in the queue from 0 to 10,000,
where 0 is the highest priority (activated first and deactivated last).
If two environments share the same priority value, the environment
created first takes higher priority.



=head2 B<REQUIRED> QueueId => Str

The queue ID to connect the queue and environment.



=head2 B<REQUIRED> Template => Str

The environment template to use in the queue.



=head2 B<REQUIRED> TemplateType => Str

The template's file type, C<JSON> or C<YAML>.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueueEnvironment in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

