
package Paws::MediaTailor::ListPrefetchSchedules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PlaybackConfigurationName', required => 1);
  has ScheduleType => (is => 'ro', isa => 'Str');
  has StreamId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrefetchSchedules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prefetchSchedule/{PlaybackConfigurationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ListPrefetchSchedulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListPrefetchSchedules - Arguments for method ListPrefetchSchedules on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrefetchSchedules on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ListPrefetchSchedules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrefetchSchedules.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ListPrefetchSchedulesResponse =
      $api . mediatailor->ListPrefetchSchedules(
      PlaybackConfigurationName => 'My__string',
      MaxResults                => 1,               # OPTIONAL
      NextToken                 => 'My__string',    # OPTIONAL
      ScheduleType              => 'SINGLE',        # OPTIONAL
      StreamId                  => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListPrefetchSchedulesResponse->Items;
    my $NextToken = $ListPrefetchSchedulesResponse->NextToken;

    # Returns a L<Paws::MediaTailor::ListPrefetchSchedulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ListPrefetchSchedules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of prefetch schedules that you want MediaTailor to
return in response to the current request. If there are more than
C<MaxResults> prefetch schedules, use the value of C<NextToken> in the
response to get the next page of results.



=head2 NextToken => Str

(Optional) If the playback configuration has more than C<MaxResults>
prefetch schedules, use C<NextToken> to get the second and subsequent
pages of results.

For the first C<ListPrefetchSchedulesRequest> request, omit this value.

For the second and subsequent requests, get the value of C<NextToken>
from the previous response and specify that value for C<NextToken> in
the request.

If the previous response didn't include a C<NextToken> element, there
are no more prefetch schedules to get.



=head2 B<REQUIRED> PlaybackConfigurationName => Str

Retrieves the prefetch schedule(s) for a specific playback
configuration.



=head2 ScheduleType => Str

The type of prefetch schedules that you want to list. C<SINGLE>
indicates that you want to list the configured single prefetch
schedules. C<RECURRING> indicates that you want to list the configured
recurring prefetch schedules. C<ALL> indicates that you want to list
all configured prefetch schedules.

Valid values are: C<"SINGLE">, C<"RECURRING">, C<"ALL">

=head2 StreamId => Str

An optional filtering parameter whereby MediaTailor filters the
prefetch schedules to include only specific streams.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrefetchSchedules in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

