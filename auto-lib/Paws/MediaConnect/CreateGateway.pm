
package Paws::MediaConnect::CreateGateway;
  use Moose;
  has EgressCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'egressCidrBlocks', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Networks => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::GatewayNetwork]', traits => ['NameInRequest'], request_name => 'networks', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/gateways');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::CreateGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateGateway - Arguments for method CreateGateway on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGateway on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method CreateGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGateway.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $CreateGatewayResponse = $mediaconnect->CreateGateway(
      EgressCidrBlocks => [ 'MyString', ... ],
      Name             => 'MyString',
      Networks         => [
        {
          CidrBlock => 'MyString',
          Name      => 'MyString',

        },
        ...
      ],

    );

    # Results:
    my $Gateway = $CreateGatewayResponse->Gateway;

    # Returns a L<Paws::MediaConnect::CreateGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/CreateGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EgressCidrBlocks => ArrayRef[Str|Undef]

The range of IP addresses that are allowed to contribute content or
initiate output requests for flows communicating with this gateway.
These IP addresses should be in the form of a Classless Inter-Domain
Routing (CIDR) block; for example, 10.0.0.0/16.



=head2 B<REQUIRED> Name => Str

The name of the gateway. This name can not be modified after the
gateway is created.



=head2 B<REQUIRED> Networks => ArrayRef[L<Paws::MediaConnect::GatewayNetwork>]

The list of networks that you want to add to the gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGateway in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

