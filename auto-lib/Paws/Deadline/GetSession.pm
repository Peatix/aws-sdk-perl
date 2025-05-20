
package Paws::Deadline::GetSession;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetSession - Arguments for method GetSession on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSession on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSession.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetSessionResponse = $deadline->GetSession(
      FarmId    => 'MyFarmId',
      JobId     => 'MyJobId',
      QueueId   => 'MyQueueId',
      SessionId => 'MySessionId',

    );

    # Results:
    my $EndedAt               = $GetSessionResponse->EndedAt;
    my $FleetId               = $GetSessionResponse->FleetId;
    my $HostProperties        = $GetSessionResponse->HostProperties;
    my $LifecycleStatus       = $GetSessionResponse->LifecycleStatus;
    my $Log                   = $GetSessionResponse->Log;
    my $SessionId             = $GetSessionResponse->SessionId;
    my $StartedAt             = $GetSessionResponse->StartedAt;
    my $TargetLifecycleStatus = $GetSessionResponse->TargetLifecycleStatus;
    my $UpdatedAt             = $GetSessionResponse->UpdatedAt;
    my $UpdatedBy             = $GetSessionResponse->UpdatedBy;
    my $WorkerId              = $GetSessionResponse->WorkerId;
    my $WorkerLog             = $GetSessionResponse->WorkerLog;

    # Returns a L<Paws::Deadline::GetSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID for the session.



=head2 B<REQUIRED> JobId => Str

The job ID for the session.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the session.



=head2 B<REQUIRED> SessionId => Str

The session ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSession in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

