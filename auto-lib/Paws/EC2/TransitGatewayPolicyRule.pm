package Paws::EC2::TransitGatewayPolicyRule;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', request_name => 'destinationCidrBlock', traits => ['NameInRequest']);
  has DestinationPortRange => (is => 'ro', isa => 'Str', request_name => 'destinationPortRange', traits => ['NameInRequest']);
  has MetaData => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPolicyRuleMetaData', request_name => 'metaData', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has SourceCidrBlock => (is => 'ro', isa => 'Str', request_name => 'sourceCidrBlock', traits => ['NameInRequest']);
  has SourcePortRange => (is => 'ro', isa => 'Str', request_name => 'sourcePortRange', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayPolicyRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayPolicyRule object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., SourcePortRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayPolicyRule object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

The destination CIDR block for the transit gateway policy rule.


=head2 DestinationPortRange => Str

The port range for the transit gateway policy rule. Currently this is
set to * (all).


=head2 MetaData => L<Paws::EC2::TransitGatewayPolicyRuleMetaData>

The meta data tags used for the transit gateway policy rule.


=head2 Protocol => Str

The protocol used by the transit gateway policy rule.


=head2 SourceCidrBlock => Str

The source CIDR block for the transit gateway policy rule.


=head2 SourcePortRange => Str

The port range for the transit gateway policy rule. Currently this is
set to * (all).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
