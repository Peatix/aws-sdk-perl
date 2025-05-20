package Paws::EC2::TransitGatewayPolicyTableAssociation;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
  has TransitGatewayPolicyTableId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayPolicyTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayPolicyTableAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayPolicyTableAssociation object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., TransitGatewayPolicyTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayPolicyTableAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ResourceId => Str

The resource ID of the transit gateway attachment.


=head2 ResourceType => Str

The resource type for the transit gateway policy table association.


=head2 State => Str

The state of the transit gateway policy table association.


=head2 TransitGatewayAttachmentId => Str

The ID of the transit gateway attachment.


=head2 TransitGatewayPolicyTableId => Str

The ID of the transit gateway policy table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
