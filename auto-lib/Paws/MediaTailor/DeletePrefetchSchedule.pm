
package Paws::MediaTailor::DeletePrefetchSchedule;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaybackConfigurationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePrefetchSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prefetchSchedule/{PlaybackConfigurationName}/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DeletePrefetchScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DeletePrefetchSchedule - Arguments for method DeletePrefetchSchedule on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePrefetchSchedule on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DeletePrefetchSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePrefetchSchedule.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DeletePrefetchScheduleResponse =
      $api . mediatailor->DeletePrefetchSchedule(
      Name                      => 'My__string',
      PlaybackConfigurationName => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DeletePrefetchSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the prefetch schedule. If the action is successful, the
service sends back an HTTP 204 response with an empty HTTP body.



=head2 B<REQUIRED> PlaybackConfigurationName => Str

The name of the playback configuration for this prefetch schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePrefetchSchedule in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

