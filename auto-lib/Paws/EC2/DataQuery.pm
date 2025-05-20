package Paws::EC2::DataQuery;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DataQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DataQuery object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Statistic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DataQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Destination => Str

The Region or Availability Zone that's the target for the data query.
For example, C<eu-north-1>.


=head2 Id => Str

A user-defined ID associated with a data query that's returned in the
C<dataResponse> identifying the query. For example, if you set the Id
to C<MyQuery01>in the query, the C<dataResponse> identifies the query
as C<MyQuery01>.


=head2 Metric => Str

The metric used for the network performance request.


=head2 Period => Str

The aggregation period used for the data query.


=head2 Source => Str

The Region or Availability Zone that's the source for the data query.
For example, C<us-east-1>.


=head2 Statistic => Str

The metric data aggregation period, C<p50>, between the specified
C<startDate> and C<endDate>. For example, a metric of C<five_minutes>
is the median of all the data points gathered within those five
minutes. C<p50> is the only supported metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
