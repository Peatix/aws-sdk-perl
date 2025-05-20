
package Paws::Deadline::UpdateWorker;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::Deadline::WorkerCapabilities', traits => ['NameInRequest'], request_name => 'capabilities');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has HostProperties => (is => 'ro', isa => 'Paws::Deadline::HostPropertiesRequest', traits => ['NameInRequest'], request_name => 'hostProperties');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateWorkerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateWorker - Arguments for method UpdateWorker on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorker on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateWorker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorker.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateWorkerResponse = $deadline->UpdateWorker(
      FarmId       => 'MyFarmId',
      FleetId      => 'MyFleetId',
      WorkerId     => 'MyWorkerId',
      Capabilities => {
        Amounts => [
          {
            Name  => 'MyAmountCapabilityName',    # min: 1, max: 100
            Value => 1.0,

          },
          ...
        ],    # min: 2, max: 17
        Attributes => [
          {
            Name   => 'MyAttributeCapabilityName',    # min: 1, max: 100
            Values => [
              'MyAttributeCapabilityValue', ...       # min: 1, max: 100
            ],    # min: 1, max: 10

          },
          ...
        ],    # min: 2, max: 17

      },    # OPTIONAL
      HostProperties => {
        HostName    => 'MyHostName',    # OPTIONAL
        IpAddresses => {
          IpV4Addresses => [ 'MyIpV4Address', ... ],    # OPTIONAL
          IpV6Addresses => [ 'MyIpV6Address', ... ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Status => 'STARTED',    # OPTIONAL
    );

    # Results:
    my $HostConfiguration = $UpdateWorkerResponse->HostConfiguration;
    my $Log               = $UpdateWorkerResponse->Log;

    # Returns a L<Paws::Deadline::UpdateWorkerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateWorker>

=head1 ATTRIBUTES


=head2 Capabilities => L<Paws::Deadline::WorkerCapabilities>

The worker capabilities to update.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update.



=head2 B<REQUIRED> FleetId => Str

The fleet ID to update.



=head2 HostProperties => L<Paws::Deadline::HostPropertiesRequest>

The host properties to update.



=head2 Status => Str

The worker status to update.

Valid values are: C<"STARTED">, C<"STOPPING">, C<"STOPPED">

=head2 B<REQUIRED> WorkerId => Str

The worker ID to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorker in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

