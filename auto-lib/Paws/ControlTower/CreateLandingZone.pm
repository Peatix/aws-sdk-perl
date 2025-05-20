
package Paws::ControlTower::CreateLandingZone;
  use Moose;
  has Manifest => (is => 'ro', isa => 'Paws::ControlTower::Manifest', traits => ['NameInRequest'], request_name => 'manifest', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ControlTower::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLandingZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-landingzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::CreateLandingZoneOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::CreateLandingZone - Arguments for method CreateLandingZone on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLandingZone on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method CreateLandingZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLandingZone.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $CreateLandingZoneOutput = $controltower->CreateLandingZone(
      Manifest => {

      },
      Version => 'MyLandingZoneVersion',
      Tags    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $CreateLandingZoneOutput->Arn;
    my $OperationIdentifier = $CreateLandingZoneOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::CreateLandingZoneOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/CreateLandingZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Manifest => L<Paws::ControlTower::Manifest>

The manifest JSON file is a text file that describes your Amazon Web
Services resources. For examples, review Launch your landing zone
(https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).



=head2 Tags => L<Paws::ControlTower::TagMap>

Tags to be applied to the landing zone.



=head2 B<REQUIRED> Version => Str

The landing zone version, for example, 3.0.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLandingZone in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

