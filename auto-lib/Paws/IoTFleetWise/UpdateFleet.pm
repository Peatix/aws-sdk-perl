
package Paws::IoTFleetWise::UpdateFleet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has FleetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UpdateFleetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateFleet - Arguments for method UpdateFleet on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleet on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UpdateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleet.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UpdateFleetResponse = $iotfleetwise->UpdateFleet(
      FleetId     => 'MyfleetId',
      Description => 'Mydescription',    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateFleetResponse->Arn;
    my $Id  = $UpdateFleetResponse->Id;

    # Returns a L<Paws::IoTFleetWise::UpdateFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UpdateFleet>

=head1 ATTRIBUTES


=head2 Description => Str

An updated description of the fleet.



=head2 B<REQUIRED> FleetId => Str

The ID of the fleet to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleet in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

