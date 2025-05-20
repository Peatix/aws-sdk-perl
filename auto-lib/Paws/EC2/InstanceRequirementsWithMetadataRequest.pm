package Paws::EC2::InstanceRequirementsWithMetadataRequest;
  use Moose;
  has ArchitectureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ArchitectureType', traits => ['NameInRequest']);
  has InstanceRequirements => (is => 'ro', isa => 'Paws::EC2::InstanceRequirementsRequest');
  has VirtualizationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'VirtualizationType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceRequirementsWithMetadataRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceRequirementsWithMetadataRequest object:

  $service_obj->Method(Att1 => { ArchitectureTypes => $value, ..., VirtualizationTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceRequirementsWithMetadataRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchitectureTypes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ArchitectureTypes => ArrayRef[Str|Undef]

The architecture type.


=head2 InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>

The attributes for the instance types. When you specify instance
attributes, Amazon EC2 will identify instance types with those
attributes.


=head2 VirtualizationTypes => ArrayRef[Str|Undef]

The virtualization type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
