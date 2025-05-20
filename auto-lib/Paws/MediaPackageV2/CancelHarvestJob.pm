
package Paws::MediaPackageV2::CancelHarvestJob;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-update-if-match');
  has HarvestJobName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HarvestJobName', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OriginEndpointName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelHarvestJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::CancelHarvestJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::CancelHarvestJob - Arguments for method CancelHarvestJob on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelHarvestJob on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method CancelHarvestJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelHarvestJob.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $CancelHarvestJobResponse = $mediapackagev2->CancelHarvestJob(
      ChannelGroupName   => 'MyResourceName',
      ChannelName        => 'MyResourceName',
      HarvestJobName     => 'MyResourceName',
      OriginEndpointName => 'MyResourceName',
      ETag               => 'MyEntityTag',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/CancelHarvestJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group containing the channel from which the
harvest job is running.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel from which the harvest job is running.



=head2 ETag => Str

The current Entity Tag (ETag) associated with the harvest job. Used for
concurrency control.



=head2 B<REQUIRED> HarvestJobName => Str

The name of the harvest job to cancel. This name must be unique within
the channel and cannot be changed after the harvest job is submitted.



=head2 B<REQUIRED> OriginEndpointName => Str

The name of the origin endpoint that the harvest job is harvesting
from. This cannot be changed after the harvest job is submitted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelHarvestJob in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

