
package Paws::GameLiftStreams::AddStreamGroupLocations;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has LocationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::LocationConfiguration]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddStreamGroupLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/locations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::AddStreamGroupLocationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::AddStreamGroupLocations - Arguments for method AddStreamGroupLocations on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddStreamGroupLocations on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method AddStreamGroupLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddStreamGroupLocations.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $AddStreamGroupLocationsOutput =
      $gameliftstreams->AddStreamGroupLocations(
      Identifier             => 'MyIdentifier',
      LocationConfigurations => [
        {
          LocationName     => 'MyLocationName',    # min: 1, max: 20
          AlwaysOnCapacity => 1,                   # OPTIONAL
          OnDemandCapacity => 1,                   # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Identifier = $AddStreamGroupLocationsOutput->Identifier;
    my $Locations  = $AddStreamGroupLocationsOutput->Locations;

    # Returns a L<Paws::GameLiftStreams::AddStreamGroupLocationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/AddStreamGroupLocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A stream group to add the specified locations to.

This value is a Amazon Resource Name (ARN) that uniquely identifies the
stream group resource. Format example: C<sg-1AB2C3De4>.



=head2 B<REQUIRED> LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]

A set of one or more locations and the streaming capacity for each
location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddStreamGroupLocations in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

