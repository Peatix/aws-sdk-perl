
package Paws::ControlTower::UpdateLandingZone;
  use Moose;
  has LandingZoneIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'landingZoneIdentifier', required => 1);
  has Manifest => (is => 'ro', isa => 'Paws::ControlTower::Manifest', traits => ['NameInRequest'], request_name => 'manifest', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLandingZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-landingzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::UpdateLandingZoneOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::UpdateLandingZone - Arguments for method UpdateLandingZone on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLandingZone on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method UpdateLandingZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLandingZone.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $UpdateLandingZoneOutput = $controltower->UpdateLandingZone(
      LandingZoneIdentifier => 'MyString',
      Manifest              => {

      },
      Version => 'MyLandingZoneVersion',

    );

    # Results:
    my $OperationIdentifier = $UpdateLandingZoneOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::UpdateLandingZoneOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/UpdateLandingZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LandingZoneIdentifier => Str

The unique identifier of the landing zone.



=head2 B<REQUIRED> Manifest => L<Paws::ControlTower::Manifest>

The manifest file (JSON) is a text file that describes your Amazon Web
Services resources. For an example, review Launch your landing zone
(https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
The example manifest file contains each of the available parameters.
The schema for the landing zone's JSON manifest file is not published,
by design.



=head2 B<REQUIRED> Version => Str

The landing zone version, for example, 3.2.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLandingZone in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

