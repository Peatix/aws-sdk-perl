
package Paws::ControlTower::GetLandingZoneOperation;
  use Moose;
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLandingZoneOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-landingzone-operation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::GetLandingZoneOperationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetLandingZoneOperation - Arguments for method GetLandingZoneOperation on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLandingZoneOperation on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method GetLandingZoneOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLandingZoneOperation.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $GetLandingZoneOperationOutput = $controltower->GetLandingZoneOperation(
      OperationIdentifier => 'MyOperationIdentifier',

    );

    # Results:
    my $OperationDetails = $GetLandingZoneOperationOutput->OperationDetails;

    # Returns a L<Paws::ControlTower::GetLandingZoneOperationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/GetLandingZoneOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationIdentifier => Str

A unique identifier assigned to a landing zone operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLandingZoneOperation in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

