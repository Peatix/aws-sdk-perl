
package Paws::Deadline::UpdateSession;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has TargetLifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetLifecycleStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateSession - Arguments for method UpdateSession on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSession on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSession.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateSessionResponse = $deadline->UpdateSession(
      FarmId                => 'MyFarmId',
      JobId                 => 'MyJobId',
      QueueId               => 'MyQueueId',
      SessionId             => 'MySessionId',
      TargetLifecycleStatus => 'ENDED',
      ClientToken           => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateSession>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update in the session.



=head2 B<REQUIRED> JobId => Str

The job ID to update in the session.



=head2 B<REQUIRED> QueueId => Str

The queue ID to update in the session.



=head2 B<REQUIRED> SessionId => Str

The session ID to update.



=head2 B<REQUIRED> TargetLifecycleStatus => Str

The life cycle status to update in the session.

Valid values are: C<"ENDED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSession in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

