
package Paws::GameLiftStreams::DeleteStreamGroup;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStreamGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::DeleteStreamGroup - Arguments for method DeleteStreamGroup on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStreamGroup on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method DeleteStreamGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStreamGroup.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    $gameliftstreams->DeleteStreamGroup(
      Identifier => 'MyIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/DeleteStreamGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID value of the stream group resource to delete. Format
example: C<sg-1AB2C3De4>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStreamGroup in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

