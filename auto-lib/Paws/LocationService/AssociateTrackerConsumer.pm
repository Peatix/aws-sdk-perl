
package Paws::LocationService::AssociateTrackerConsumer;
  use Moose;
  has ConsumerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTrackerConsumer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/consumers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::AssociateTrackerConsumerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::AssociateTrackerConsumer - Arguments for method AssociateTrackerConsumer on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTrackerConsumer on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method AssociateTrackerConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTrackerConsumer.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $AssociateTrackerConsumerResponse = $geo->AssociateTrackerConsumer(
      ConsumerArn => 'MyArn',
      TrackerName => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/AssociateTrackerConsumer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerArn => Str

The Amazon Resource Name (ARN) for the geofence collection to be
associated to tracker resource. Used when you need to specify a
resource across all Amazon Web Services.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer>

=back




=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to be associated with a geofence
collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTrackerConsumer in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

