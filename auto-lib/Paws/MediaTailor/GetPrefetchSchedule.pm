
package Paws::MediaTailor::GetPrefetchSchedule;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaybackConfigurationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrefetchSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prefetchSchedule/{PlaybackConfigurationName}/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::GetPrefetchScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetPrefetchSchedule - Arguments for method GetPrefetchSchedule on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrefetchSchedule on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method GetPrefetchSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrefetchSchedule.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $GetPrefetchScheduleResponse = $api . mediatailor->GetPrefetchSchedule(
      Name                      => 'My__string',
      PlaybackConfigurationName => 'My__string',

    );

    # Results:
    my $Arn         = $GetPrefetchScheduleResponse->Arn;
    my $Consumption = $GetPrefetchScheduleResponse->Consumption;
    my $Name        = $GetPrefetchScheduleResponse->Name;
    my $PlaybackConfigurationName =
      $GetPrefetchScheduleResponse->PlaybackConfigurationName;
    my $RecurringPrefetchConfiguration =
      $GetPrefetchScheduleResponse->RecurringPrefetchConfiguration;
    my $Retrieval    = $GetPrefetchScheduleResponse->Retrieval;
    my $ScheduleType = $GetPrefetchScheduleResponse->ScheduleType;
    my $StreamId     = $GetPrefetchScheduleResponse->StreamId;

    # Returns a L<Paws::MediaTailor::GetPrefetchScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/GetPrefetchSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the prefetch schedule. The name must be unique among all
prefetch schedules that are associated with the specified playback
configuration.



=head2 B<REQUIRED> PlaybackConfigurationName => Str

Returns information about the prefetch schedule for a specific playback
configuration. If you call C<GetPrefetchSchedule> on an expired
prefetch schedule, MediaTailor returns an HTTP 404 status code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrefetchSchedule in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

