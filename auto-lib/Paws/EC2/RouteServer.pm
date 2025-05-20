package Paws::EC2::RouteServer;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int', request_name => 'amazonSideAsn', traits => ['NameInRequest']);
  has PersistRoutesDuration => (is => 'ro', isa => 'Int', request_name => 'persistRoutesDuration', traits => ['NameInRequest']);
  has PersistRoutesState => (is => 'ro', isa => 'Str', request_name => 'persistRoutesState', traits => ['NameInRequest']);
  has RouteServerId => (is => 'ro', isa => 'Str', request_name => 'routeServerId', traits => ['NameInRequest']);
  has SnsNotificationsEnabled => (is => 'ro', isa => 'Bool', request_name => 'snsNotificationsEnabled', traits => ['NameInRequest']);
  has SnsTopicArn => (is => 'ro', isa => 'Str', request_name => 'snsTopicArn', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServer object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServer object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for
the appliance. Valid values are from 1 to 4294967295. We recommend
using a private ASN in the 64512E<ndash>65534 (16-bit ASN) or
4200000000E<ndash>4294967294 (32-bit ASN) range.


=head2 PersistRoutesDuration => Int

The number of minutes a route server will wait after BGP is
re-established to unpersist the routes in the FIB and RIB. Value must
be in the range of 1-5. The default value is 1. Only valid if
C<persistRoutesState> is 'enabled'.

If you set the duration to 1 minute, then when your network appliance
re-establishes BGP with route server, it has 1 minute to relearn it's
adjacent network and advertise those routes to route server before
route server resumes normal functionality. In most cases, 1 minute is
probably sufficient. If, however, you have concerns that your BGP
network may not be capable of fully re-establishing and re-learning
everything in 1 minute, you can increase the duration up to 5 minutes.


=head2 PersistRoutesState => Str

The current state of route persistence for the route server.


=head2 RouteServerId => Str

The unique identifier of the route server.


=head2 SnsNotificationsEnabled => Bool

Indicates whether SNS notifications are enabled for the route server.
Enabling SNS notifications persists BGP status changes to an SNS topic
provisioned by Amazon Web Services.


=head2 SnsTopicArn => Str

The ARN of the SNS topic where notifications are published.


=head2 State => Str

The current state of the route server.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the route server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
