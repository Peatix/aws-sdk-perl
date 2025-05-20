package Paws::EC2::NetworkInterfaceAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has AttachTime => (is => 'ro', isa => 'Str', request_name => 'attachTime', traits => ['NameInRequest']);
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has DeviceIndex => (is => 'ro', isa => 'Int', request_name => 'deviceIndex', traits => ['NameInRequest']);
  has EnaQueueCount => (is => 'ro', isa => 'Int', request_name => 'enaQueueCount', traits => ['NameInRequest']);
  has EnaSrdSpecification => (is => 'ro', isa => 'Paws::EC2::AttachmentEnaSrdSpecification', request_name => 'enaSrdSpecification', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceOwnerId => (is => 'ro', isa => 'Str', request_name => 'instanceOwnerId', traits => ['NameInRequest']);
  has NetworkCardIndex => (is => 'ro', isa => 'Int', request_name => 'networkCardIndex', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterfaceAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterfaceAttachment object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterfaceAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The ID of the network interface attachment.


=head2 AttachTime => Str

The timestamp indicating when the attachment initiated.


=head2 DeleteOnTermination => Bool

Indicates whether the network interface is deleted when the instance is
terminated.


=head2 DeviceIndex => Int

The device index of the network interface attachment on the instance.


=head2 EnaQueueCount => Int

The number of ENA queues created with the instance.


=head2 EnaSrdSpecification => L<Paws::EC2::AttachmentEnaSrdSpecification>

Configures ENA Express for the network interface that this action
attaches to the instance.


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceOwnerId => Str

The Amazon Web Services account ID of the owner of the instance.


=head2 NetworkCardIndex => Int

The index of the network card.


=head2 Status => Str

The attachment state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
