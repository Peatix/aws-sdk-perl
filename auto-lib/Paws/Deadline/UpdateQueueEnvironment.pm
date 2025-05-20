
package Paws::Deadline::UpdateQueueEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has QueueEnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueEnvironmentId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template');
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueueEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateQueueEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateQueueEnvironment - Arguments for method UpdateQueueEnvironment on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueueEnvironment on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateQueueEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueueEnvironment.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateQueueEnvironmentResponse = $deadline->UpdateQueueEnvironment(
      FarmId             => 'MyFarmId',
      QueueEnvironmentId => 'MyQueueEnvironmentId',
      QueueId            => 'MyQueueId',
      ClientToken        => 'MyClientToken',            # OPTIONAL
      Priority           => 1,                          # OPTIONAL
      Template           => 'MyEnvironmentTemplate',    # OPTIONAL
      TemplateType       => 'JSON',                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateQueueEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the queue environment to update.



=head2 Priority => Int

The priority to update.



=head2 B<REQUIRED> QueueEnvironmentId => Str

The queue environment ID to update.



=head2 B<REQUIRED> QueueId => Str

The queue ID of the queue environment to update.



=head2 Template => Str

The template to update.



=head2 TemplateType => Str

The template type to update.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueueEnvironment in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

