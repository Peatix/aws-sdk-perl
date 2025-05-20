package Paws::EC2::VerifiedAccessLogS3Destination;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', request_name => 'bucketName', traits => ['NameInRequest']);
  has BucketOwner => (is => 'ro', isa => 'Str', request_name => 'bucketOwner', traits => ['NameInRequest']);
  has DeliveryStatus => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessLogDeliveryStatus', request_name => 'deliveryStatus', traits => ['NameInRequest']);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessLogS3Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessLogS3Destination object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessLogS3Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BucketName => Str

The bucket name.


=head2 BucketOwner => Str

The Amazon Web Services account number that owns the bucket.


=head2 DeliveryStatus => L<Paws::EC2::VerifiedAccessLogDeliveryStatus>

The delivery status.


=head2 Enabled => Bool

Indicates whether logging is enabled.


=head2 Prefix => Str

The bucket prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
