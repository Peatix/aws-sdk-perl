
package Paws::EC2::ModifyRouteServer;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has PersistRoutes => (is => 'ro', isa => 'Str');
  has PersistRoutesDuration => (is => 'ro', isa => 'Int');
  has RouteServerId => (is => 'ro', isa => 'Str', required => 1);
  has SnsNotificationsEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyRouteServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyRouteServerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyRouteServer - Arguments for method ModifyRouteServer on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyRouteServer on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyRouteServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyRouteServer.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyRouteServerResult = $ec2->ModifyRouteServer(
      RouteServerId           => 'MyRouteServerId',
      DryRun                  => 1,                   # OPTIONAL
      PersistRoutes           => 'enable',            # OPTIONAL
      PersistRoutesDuration   => 1,                   # OPTIONAL
      SnsNotificationsEnabled => 1,                   # OPTIONAL
    );

    # Results:
    my $RouteServer = $ModifyRouteServerResult->RouteServer;

    # Returns a L<Paws::EC2::ModifyRouteServerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyRouteServer>

=head1 ATTRIBUTES


=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PersistRoutes => Str

Specifies whether to persist routes after all BGP sessions are
terminated.

=over

=item *

enable: Routes will be persisted in FIB and RIB after all BGP sessions
are terminated.

=item *

disable: Routes will not be persisted in FIB and RIB after all BGP
sessions are terminated.

=item *

reset: If a route server has persisted routes due to all BGP sessions
having ended, reset will withdraw all routes and reset route server to
an empty FIB and RIB.

=back


Valid values are: C<"enable">, C<"disable">, C<"reset">

=head2 PersistRoutesDuration => Int

The number of minutes a route server will wait after BGP is
re-established to unpersist the routes in the FIB and RIB. Value must
be in the range of 1-5. Required if PersistRoutes is C<enabled>.

If you set the duration to 1 minute, then when your network appliance
re-establishes BGP with route server, it has 1 minute to relearn it's
adjacent network and advertise those routes to route server before
route server resumes normal functionality. In most cases, 1 minute is
probably sufficient. If, however, you have concerns that your BGP
network may not be capable of fully re-establishing and re-learning
everything in 1 minute, you can increase the duration up to 5 minutes.



=head2 B<REQUIRED> RouteServerId => Str

The ID of the route server to modify.



=head2 SnsNotificationsEnabled => Bool

Specifies whether to enable SNS notifications for route server events.
Enabling SNS notifications persists BGP status changes to an SNS topic
provisioned by Amazon Web Services.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyRouteServer in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

