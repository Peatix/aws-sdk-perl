package Paws::EC2::NeuronDeviceInfo;
  use Moose;
  has CoreInfo => (is => 'ro', isa => 'Paws::EC2::NeuronDeviceCoreInfo', request_name => 'coreInfo', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has MemoryInfo => (is => 'ro', isa => 'Paws::EC2::NeuronDeviceMemoryInfo', request_name => 'memoryInfo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NeuronDeviceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NeuronDeviceInfo object:

  $service_obj->Method(Att1 => { CoreInfo => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NeuronDeviceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CoreInfo

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CoreInfo => L<Paws::EC2::NeuronDeviceCoreInfo>

Describes the cores available to each neuron accelerator.


=head2 Count => Int

The number of neuron accelerators for the instance type.


=head2 MemoryInfo => L<Paws::EC2::NeuronDeviceMemoryInfo>

Describes the memory available to each neuron accelerator.


=head2 Name => Str

The name of the neuron accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
