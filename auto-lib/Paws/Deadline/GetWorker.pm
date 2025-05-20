
package Paws::Deadline::GetWorker;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetWorkerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetWorker - Arguments for method GetWorker on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorker on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetWorker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorker.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetWorkerResponse = $deadline->GetWorker(
      FarmId   => 'MyFarmId',
      FleetId  => 'MyFleetId',
      WorkerId => 'MyWorkerId',

    );

    # Results:
    my $CreatedAt      = $GetWorkerResponse->CreatedAt;
    my $CreatedBy      = $GetWorkerResponse->CreatedBy;
    my $FarmId         = $GetWorkerResponse->FarmId;
    my $FleetId        = $GetWorkerResponse->FleetId;
    my $HostProperties = $GetWorkerResponse->HostProperties;
    my $Log            = $GetWorkerResponse->Log;
    my $Status         = $GetWorkerResponse->Status;
    my $UpdatedAt      = $GetWorkerResponse->UpdatedAt;
    my $UpdatedBy      = $GetWorkerResponse->UpdatedBy;
    my $WorkerId       = $GetWorkerResponse->WorkerId;

    # Returns a L<Paws::Deadline::GetWorkerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetWorker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID for the worker.



=head2 B<REQUIRED> FleetId => Str

The fleet ID of the worker.



=head2 B<REQUIRED> WorkerId => Str

The worker ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorker in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

