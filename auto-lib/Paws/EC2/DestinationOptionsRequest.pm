package Paws::EC2::DestinationOptionsRequest;
  use Moose;
  has FileFormat => (is => 'ro', isa => 'Str');
  has HiveCompatiblePartitions => (is => 'ro', isa => 'Bool');
  has PerHourPartition => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DestinationOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DestinationOptionsRequest object:

  $service_obj->Method(Att1 => { FileFormat => $value, ..., PerHourPartition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DestinationOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->FileFormat

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FileFormat => Str

The format for the flow log. The default is C<plain-text>.


=head2 HiveCompatiblePartitions => Bool

Indicates whether to use Hive-compatible prefixes for flow logs stored
in Amazon S3. The default is C<false>.


=head2 PerHourPartition => Bool

Indicates whether to partition the flow log per hour. This reduces the
cost and response time for queries. The default is C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
