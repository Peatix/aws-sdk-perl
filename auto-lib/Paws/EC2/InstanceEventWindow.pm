package Paws::EC2::InstanceEventWindow;
  use Moose;
  has AssociationTarget => (is => 'ro', isa => 'Paws::EC2::InstanceEventWindowAssociationTarget', request_name => 'associationTarget', traits => ['NameInRequest']);
  has CronExpression => (is => 'ro', isa => 'Str', request_name => 'cronExpression', traits => ['NameInRequest']);
  has InstanceEventWindowId => (is => 'ro', isa => 'Str', request_name => 'instanceEventWindowId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TimeRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceEventWindowTimeRange]', request_name => 'timeRangeSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceEventWindow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceEventWindow object:

  $service_obj->Method(Att1 => { AssociationTarget => $value, ..., TimeRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceEventWindow object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationTarget

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationTarget => L<Paws::EC2::InstanceEventWindowAssociationTarget>

One or more targets associated with the event window.


=head2 CronExpression => Str

The cron expression defined for the event window.


=head2 InstanceEventWindowId => Str

The ID of the event window.


=head2 Name => Str

The name of the event window.


=head2 State => Str

The current state of the event window.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The instance tags associated with the event window.


=head2 TimeRanges => ArrayRef[L<Paws::EC2::InstanceEventWindowTimeRange>]

One or more time ranges defined for the event window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
