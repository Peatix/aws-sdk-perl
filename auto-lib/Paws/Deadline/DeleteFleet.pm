
package Paws::Deadline::DeleteFleet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::DeleteFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::DeleteFleet - Arguments for method DeleteFleet on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFleet on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method DeleteFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFleet.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $DeleteFleetResponse = $deadline->DeleteFleet(
      FarmId      => 'MyFarmId',
      FleetId     => 'MyFleetId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/DeleteFleet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to remove from the fleet.



=head2 B<REQUIRED> FleetId => Str

The fleet ID of the fleet to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFleet in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

