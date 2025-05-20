package Paws::EC2::FirewallStatelessRule;
  use Moose;
  has DestinationPorts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PortRange]', request_name => 'destinationPortSet', traits => ['NameInRequest']);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'destinationSet', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest']);
  has Protocols => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'protocolSet', traits => ['NameInRequest']);
  has RuleAction => (is => 'ro', isa => 'Str', request_name => 'ruleAction', traits => ['NameInRequest']);
  has RuleGroupArn => (is => 'ro', isa => 'Str', request_name => 'ruleGroupArn', traits => ['NameInRequest']);
  has SourcePorts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PortRange]', request_name => 'sourcePortSet', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourceSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FirewallStatelessRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FirewallStatelessRule object:

  $service_obj->Method(Att1 => { DestinationPorts => $value, ..., Sources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FirewallStatelessRule object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationPorts

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationPorts => ArrayRef[L<Paws::EC2::PortRange>]

The destination ports.


=head2 Destinations => ArrayRef[Str|Undef]

The destination IP addresses, in CIDR notation.


=head2 Priority => Int

The rule priority.


=head2 Protocols => ArrayRef[Int]

The protocols.


=head2 RuleAction => Str

The rule action. The possible values are C<pass>, C<drop>, and
C<forward_to_site>.


=head2 RuleGroupArn => Str

The ARN of the stateless rule group.


=head2 SourcePorts => ArrayRef[L<Paws::EC2::PortRange>]

The source ports.


=head2 Sources => ArrayRef[Str|Undef]

The source IP addresses, in CIDR notation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
