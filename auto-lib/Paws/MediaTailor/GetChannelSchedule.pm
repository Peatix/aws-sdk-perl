
package Paws::MediaTailor::GetChannelSchedule;
  use Moose;
  has Audience => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'audience');
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has DurationMinutes => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'durationMinutes');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannelSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{ChannelName}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::GetChannelScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetChannelSchedule - Arguments for method GetChannelSchedule on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannelSchedule on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method GetChannelSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannelSchedule.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $GetChannelScheduleResponse = $api . mediatailor->GetChannelSchedule(
      ChannelName     => 'My__string',
      Audience        => 'My__string',    # OPTIONAL
      DurationMinutes => 'My__string',    # OPTIONAL
      MaxResults      => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $GetChannelScheduleResponse->Items;
    my $NextToken = $GetChannelScheduleResponse->NextToken;

    # Returns a L<Paws::MediaTailor::GetChannelScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/GetChannelSchedule>

=head1 ATTRIBUTES


=head2 Audience => Str

The single audience for GetChannelScheduleRequest.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel associated with this Channel Schedule.



=head2 DurationMinutes => Str

The duration in minutes of the channel schedule.



=head2 MaxResults => Int

The maximum number of channel schedules that you want MediaTailor to
return in response to the current request. If there are more than
C<MaxResults> channel schedules, use the value of C<NextToken> in the
response to get the next page of results.



=head2 NextToken => Str

(Optional) If the playback configuration has more than C<MaxResults>
channel schedules, use C<NextToken> to get the second and subsequent
pages of results.

For the first C<GetChannelScheduleRequest> request, omit this value.

For the second and subsequent requests, get the value of C<NextToken>
from the previous response and specify that value for C<NextToken> in
the request.

If the previous response didn't include a C<NextToken> element, there
are no more channel schedules to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannelSchedule in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

