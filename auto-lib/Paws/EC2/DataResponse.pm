package Paws::EC2::DataResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Metric => (is => 'ro', isa => 'Str', request_name => 'metric', traits => ['NameInRequest']);
  has MetricPoints => (is => 'ro', isa => 'ArrayRef[Paws::EC2::MetricPoint]', request_name => 'metricPointSet', traits => ['NameInRequest']);
  has Period => (is => 'ro', isa => 'Str', request_name => 'period', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest']);
  has Statistic => (is => 'ro', isa => 'Str', request_name => 'statistic', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DataResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DataResponse object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Statistic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DataResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Destination => Str

The Region or Availability Zone that's the destination for the data
query. For example, C<eu-west-1>.


=head2 Id => Str

The ID passed in the C<DataQuery>.


=head2 Metric => Str

The metric used for the network performance request.


=head2 MetricPoints => ArrayRef[L<Paws::EC2::MetricPoint>]

A list of C<MetricPoint> objects.


=head2 Period => Str

The period used for the network performance request.


=head2 Source => Str

The Region or Availability Zone that's the source for the data query.
For example, C<us-east-1>.


=head2 Statistic => Str

The statistic used for the network performance request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
