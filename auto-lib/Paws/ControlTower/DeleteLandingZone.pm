
package Paws::ControlTower::DeleteLandingZone;
  use Moose;
  has LandingZoneIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'landingZoneIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLandingZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-landingzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::DeleteLandingZoneOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::DeleteLandingZone - Arguments for method DeleteLandingZone on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLandingZone on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method DeleteLandingZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLandingZone.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $DeleteLandingZoneOutput = $controltower->DeleteLandingZone(
      LandingZoneIdentifier => 'MyString',

    );

    # Results:
    my $OperationIdentifier = $DeleteLandingZoneOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::DeleteLandingZoneOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/DeleteLandingZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LandingZoneIdentifier => Str

The unique identifier of the landing zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLandingZone in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

