
package Paws::Deadline::DeleteWorker;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::DeleteWorkerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::DeleteWorker - Arguments for method DeleteWorker on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorker on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method DeleteWorker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorker.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $DeleteWorkerResponse = $deadline->DeleteWorker(
      FarmId   => 'MyFarmId',
      FleetId  => 'MyFleetId',
      WorkerId => 'MyWorkerId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/DeleteWorker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the worker to delete.



=head2 B<REQUIRED> FleetId => Str

The fleet ID of the worker to delete.



=head2 B<REQUIRED> WorkerId => Str

The worker ID of the worker to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorker in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

