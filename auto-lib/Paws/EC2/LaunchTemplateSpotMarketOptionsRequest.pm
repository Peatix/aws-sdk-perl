package Paws::EC2::LaunchTemplateSpotMarketOptionsRequest;
  use Moose;
  has BlockDurationMinutes => (is => 'ro', isa => 'Int');
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has SpotInstanceType => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateSpotMarketOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateSpotMarketOptionsRequest object:

  $service_obj->Method(Att1 => { BlockDurationMinutes => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateSpotMarketOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockDurationMinutes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockDurationMinutes => Int

Deprecated.


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 MaxPrice => Str

The maximum hourly price you're willing to pay for a Spot Instance. We
do not recommend using this parameter because it can lead to increased
interruptions. If you do not specify this parameter, you will pay the
current Spot price. If you do specify this parameter, it must be more
than USD $0.001. Specifying a value below USD $0.001 will result in an
C<InvalidParameterValue> error message when the launch template is used
to launch an instance.

If you specify a maximum price, your Spot Instances will be interrupted
more frequently than if you do not specify this parameter.


=head2 SpotInstanceType => Str

The Spot Instance request type.


=head2 ValidUntil => Str

The end date of the request, in UTC format
(I<YYYY-MM-DD>TI<HH:MM:SS>Z). Supported only for persistent requests.

=over

=item *

For a persistent request, the request remains active until the
C<ValidUntil> date and time is reached. Otherwise, the request remains
active until you cancel it.

=item *

For a one-time request, C<ValidUntil> is not supported. The request
remains active until all instances launch or you cancel the request.

=back

Default: 7 days from the current date



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
