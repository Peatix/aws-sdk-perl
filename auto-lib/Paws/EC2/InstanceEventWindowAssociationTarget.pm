package Paws::EC2::InstanceEventWindowAssociationTarget;
  use Moose;
  has DedicatedHostIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dedicatedHostIdSet', traits => ['NameInRequest']);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceIdSet', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceEventWindowAssociationTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceEventWindowAssociationTarget object:

  $service_obj->Method(Att1 => { DedicatedHostIds => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceEventWindowAssociationTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DedicatedHostIds

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DedicatedHostIds => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts associated with the event window.


=head2 InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances associated with the event window.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The instance tags associated with the event window. Any instances
associated with the tags will be associated with the event window.

Note that while you can't create tag keys beginning with C<aws:>, you
can specify existing Amazon Web Services managed tag keys (with the
C<aws:> prefix) when specifying them as targets to associate with the
event window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
