package Paws::EC2::MacModificationTask;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has MacModificationTaskId => (is => 'ro', isa => 'Str', request_name => 'macModificationTaskId', traits => ['NameInRequest']);
  has MacSystemIntegrityProtectionConfig => (is => 'ro', isa => 'Paws::EC2::MacSystemIntegrityProtectionConfiguration', request_name => 'macSystemIntegrityProtectionConfig', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TaskState => (is => 'ro', isa => 'Str', request_name => 'taskState', traits => ['NameInRequest']);
  has TaskType => (is => 'ro', isa => 'Str', request_name => 'taskType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MacModificationTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::MacModificationTask object:

  $service_obj->Method(Att1 => { InstanceId => $value, ..., TaskType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::MacModificationTask object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the Amazon EC2 Mac instance.


=head2 MacModificationTaskId => Str

The ID of task.


=head2 MacSystemIntegrityProtectionConfig => L<Paws::EC2::MacSystemIntegrityProtectionConfiguration>

[SIP modification tasks only] Information about the SIP configuration.


=head2 StartTime => Str

The date and time the task was created, in the UTC timezone
(C<YYYY-MM-DDThh:mm:ss.sssZ>).


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the task.


=head2 TaskState => Str

The state of the task.


=head2 TaskType => Str

The type of task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
