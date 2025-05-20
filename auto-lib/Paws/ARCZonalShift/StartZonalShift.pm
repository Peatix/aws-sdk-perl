
package Paws::ARCZonalShift::StartZonalShift;
  use Moose;
  has AwayFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awayFrom', required => 1);
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment', required => 1);
  has ExpiresIn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresIn', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartZonalShift');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/zonalshifts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::ZonalShift');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::StartZonalShift - Arguments for method StartZonalShift on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartZonalShift on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method StartZonalShift.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartZonalShift.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $ZonalShift = $arc -zonal-shift->StartZonalShift(
      AwayFrom           => 'MyAvailabilityZone',
      Comment            => 'MyZonalShiftComment',
      ExpiresIn          => 'MyExpiresIn',
      ResourceIdentifier => 'MyResourceIdentifier',

    );

    # Results:
    my $AwayFrom           = $ZonalShift->AwayFrom;
    my $Comment            = $ZonalShift->Comment;
    my $ExpiryTime         = $ZonalShift->ExpiryTime;
    my $ResourceIdentifier = $ZonalShift->ResourceIdentifier;
    my $StartTime          = $ZonalShift->StartTime;
    my $Status             = $ZonalShift->Status;
    my $ZonalShiftId       = $ZonalShift->ZonalShiftId;

    # Returns a L<Paws::ARCZonalShift::ZonalShift> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/StartZonalShift>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwayFrom => Str

The Availability Zone (for example, C<use1-az1>) that traffic is moved
away from for a resource when you start a zonal shift. Until the zonal
shift expires or you cancel it, traffic for the resource is instead
moved to other Availability Zones in the Amazon Web Services Region.



=head2 B<REQUIRED> Comment => Str

A comment that you enter about the zonal shift. Only the latest comment
is retained; no comment history is maintained. A new comment overwrites
any existing comment string.



=head2 B<REQUIRED> ExpiresIn => Str

The length of time that you want a zonal shift to be active, which ARC
converts to an expiry time (expiration time). Zonal shifts are
temporary. You can set a zonal shift to be active initially for up to
three days (72 hours).

If you want to still keep traffic away from an Availability Zone, you
can update the zonal shift and set a new expiration. You can also
cancel a zonal shift, before it expires, for example, if you're ready
to restore traffic to the Availability Zone.

To set a length of time for a zonal shift to be active, specify a whole
number, and then one of the following, with no space:

=over

=item *

B<A lowercase letter m:> To specify that the value is in minutes.

=item *

B<A lowercase letter h:> To specify that the value is in hours.

=back

For example: C<20h> means the zonal shift expires in 20 hours. C<120m>
means the zonal shift expires in 120 minutes (2 hours).



=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that Amazon Web Services shifts traffic
for. The identifier is the Amazon Resource Name (ARN) for the resource.

At this time, supported resources are Network Load Balancers and
Application Load Balancers with cross-zone load balancing turned off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartZonalShift in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

