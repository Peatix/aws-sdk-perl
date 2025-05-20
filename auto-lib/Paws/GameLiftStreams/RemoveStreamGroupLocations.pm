
package Paws::GameLiftStreams::RemoveStreamGroupLocations;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has Locations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'locations', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveStreamGroupLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}/locations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::RemoveStreamGroupLocations - Arguments for method RemoveStreamGroupLocations on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveStreamGroupLocations on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method RemoveStreamGroupLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveStreamGroupLocations.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    $gameliftstreams->RemoveStreamGroupLocations(
      Identifier => 'MyIdentifier',
      Locations  => [ 'MyString', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/RemoveStreamGroupLocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A stream group to remove the specified locations from.

This value is a Amazon Resource Name (ARN) that uniquely identifies the
stream group resource. Format example: C<sg-1AB2C3De4>.



=head2 B<REQUIRED> Locations => ArrayRef[Str|Undef]

A set of locations to remove this stream group.

A set of location names. For example, C<us-east-1>. For a complete list
of locations that Amazon GameLift Streams supports, refer to Regions
and quotas
(https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html)
in the I<Amazon GameLift Streams Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveStreamGroupLocations in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

