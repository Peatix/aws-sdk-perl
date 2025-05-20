
package Paws::ControlTower::ListLandingZones;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLandingZones');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-landingzones');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ListLandingZonesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListLandingZones - Arguments for method ListLandingZones on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLandingZones on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ListLandingZones.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLandingZones.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ListLandingZonesOutput = $controltower->ListLandingZones(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $LandingZones = $ListLandingZonesOutput->LandingZones;
    my $NextToken    = $ListLandingZonesOutput->NextToken;

    # Returns a L<Paws::ControlTower::ListLandingZonesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ListLandingZones>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of returned landing zone ARNs, which is one.



=head2 NextToken => Str

The token to continue the list from a previous API call with the same
parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLandingZones in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

