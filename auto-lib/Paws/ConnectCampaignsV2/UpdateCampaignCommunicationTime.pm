
package Paws::ConnectCampaignsV2::UpdateCampaignCommunicationTime;
  use Moose;
  has CommunicationTimeConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::CommunicationTimeConfig', traits => ['NameInRequest'], request_name => 'communicationTimeConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaignCommunicationTime');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/communication-time');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::UpdateCampaignCommunicationTime - Arguments for method UpdateCampaignCommunicationTime on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaignCommunicationTime on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method UpdateCampaignCommunicationTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaignCommunicationTime.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->UpdateCampaignCommunicationTime(
      CommunicationTimeConfig => {
        LocalTimeZoneConfig => {
          DefaultTimeZone        => 'MyTimeZone',    # max: 50; OPTIONAL
          LocalTimeZoneDetection => [
            'ZIP_CODE', ...    # values: ZIP_CODE, AREA_CODE
          ],    # OPTIONAL
        },
        Email => {
          OpenHours => {
            DailyHours => {
              'MONDAY' => [
                {
                  EndTime   => 'MyIso8601Time',
                  StartTime => 'MyIso8601Time',

                },
                ...
                ]
              , # key: values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
            },    # OPTIONAL
          },
          RestrictedPeriods => {
            RestrictedPeriodList => [
              {
                EndDate   => 'MyIso8601Date',
                StartDate => 'MyIso8601Date',
                Name => 'MyRestrictedPeriodName',   # min: 1, max: 127; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Sms => {
          OpenHours => {
            DailyHours => {
              'MONDAY' => [
                {
                  EndTime   => 'MyIso8601Time',
                  StartTime => 'MyIso8601Time',

                },
                ...
                ]
              , # key: values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
            },    # OPTIONAL
          },
          RestrictedPeriods => {
            RestrictedPeriodList => [
              {
                EndDate   => 'MyIso8601Date',
                StartDate => 'MyIso8601Date',
                Name => 'MyRestrictedPeriodName',   # min: 1, max: 127; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Telephony => {
          OpenHours => {
            DailyHours => {
              'MONDAY' => [
                {
                  EndTime   => 'MyIso8601Time',
                  StartTime => 'MyIso8601Time',

                },
                ...
                ]
              , # key: values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
            },    # OPTIONAL
          },
          RestrictedPeriods => {
            RestrictedPeriodList => [
              {
                EndDate   => 'MyIso8601Date',
                StartDate => 'MyIso8601Date',
                Name => 'MyRestrictedPeriodName',   # min: 1, max: 127; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Id => 'MyCampaignId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/UpdateCampaignCommunicationTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommunicationTimeConfig => L<Paws::ConnectCampaignsV2::CommunicationTimeConfig>





=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaignCommunicationTime in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

