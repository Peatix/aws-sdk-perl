package Paws::EC2::MetricPoint;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', request_name => 'endDate', traits => ['NameInRequest']);
  has StartDate => (is => 'ro', isa => 'Str', request_name => 'startDate', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MetricPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::MetricPoint object:

  $service_obj->Method(Att1 => { EndDate => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::MetricPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->EndDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndDate => Str

The end date for the metric point. The ending time must be formatted as
C<yyyy-mm-ddThh:mm:ss>. For example, C<2022-06-12T12:00:00.000Z>.


=head2 StartDate => Str

The start date for the metric point. The starting date for the metric
point. The starting time must be formatted as C<yyyy-mm-ddThh:mm:ss>.
For example, C<2022-06-10T12:00:00.000Z>.


=head2 Status => Str

The status of the metric point.


=head2 Value => Num





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
