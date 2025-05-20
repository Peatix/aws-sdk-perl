
package Paws::ConnectCampaignsV2::CreateCampaign;
  use Moose;
  has ChannelSubtypeConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::ChannelSubtypeConfig', traits => ['NameInRequest'], request_name => 'channelSubtypeConfig', required => 1);
  has CommunicationLimitsOverride => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::CommunicationLimitsConfig', traits => ['NameInRequest'], request_name => 'communicationLimitsOverride');
  has CommunicationTimeConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::CommunicationTimeConfig', traits => ['NameInRequest'], request_name => 'communicationTimeConfig');
  has ConnectCampaignFlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectCampaignFlowArn');
  has ConnectInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectInstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::Schedule', traits => ['NameInRequest'], request_name => 'schedule');
  has Source => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::Source', traits => ['NameInRequest'], request_name => 'source');
  has Tags => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaignsV2::CreateCampaignResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::CreateCampaign - Arguments for method CreateCampaign on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCampaign on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method CreateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCampaign.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    my $CreateCampaignResponse = $connect -campaigns->CreateCampaign(
      ChannelSubtypeConfig => {
        Email => {
          DefaultOutboundConfig => {
            ConnectSourceEmailAddress => 'MyEmailAddress',   # min: 1, max: 255
            WisdomTemplateArn         => 'MyArn',            # min: 20, max: 500
            SourceEmailAddressDisplayName =>
              'MyEmailDisplayName',    # max: 256; OPTIONAL
          },
          OutboundMode => {
            Agentless => {

            },                         # OPTIONAL
          },
          Capacity => 1,               # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        Sms => {
          DefaultOutboundConfig => {
            ConnectSourcePhoneNumberArn => 'MyArn',    # min: 20, max: 500
            WisdomTemplateArn           => 'MyArn',    # min: 20, max: 500

          },
          OutboundMode => {
            Agentless => {

            },                                         # OPTIONAL
          },
          Capacity => 1,    # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        Telephony => {
          DefaultOutboundConfig => {
            ConnectContactFlowId         => 'MyContactFlowId',    # max: 500
            AnswerMachineDetectionConfig => {
              EnableAnswerMachineDetection => 1,
              AwaitAnswerMachinePrompt     => 1,
            },                                                    # OPTIONAL
            ConnectSourcePhoneNumber =>
              'MySourcePhoneNumber',    # max: 100; OPTIONAL
          },
          OutboundMode => {
            Agentless => {

            },                          # OPTIONAL
            Predictive => {
              BandwidthAllocation => 1,    # max: 1

            },    # OPTIONAL
            Progressive => {
              BandwidthAllocation => 1,    # max: 1

            },    # OPTIONAL
          },
          Capacity       => 1,              # min: 0.01, max: 1; OPTIONAL
          ConnectQueueId => 'MyQueueId',    # max: 500; OPTIONAL
        },    # OPTIONAL
      },
      ConnectInstanceId           => 'MyInstanceId',
      Name                        => 'MyCampaignName',
      CommunicationLimitsOverride => {
        AllChannelSubtypes => {
          CommunicationLimitsList => [
            {
              Frequency            => 1,        # min: 1, max: 30
              MaxCountPerRecipient => 1,        # min: 1
              Unit                 => 'DAY',    # values: DAY

            },
            ...
          ],    # max: 2; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
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
      },    # OPTIONAL
      ConnectCampaignFlowArn => 'MyArn',    # OPTIONAL
      Schedule               => {
        EndTime          => '1970-01-01T01:00:00',
        StartTime        => '1970-01-01T01:00:00',
        RefreshFrequency => 'MyIso8601Duration',     # max: 50; OPTIONAL
      },    # OPTIONAL
      Source => {
        CustomerProfilesSegmentArn => 'MyArn',    # min: 20, max: 500
        EventTrigger               => {
          CustomerProfilesDomainArn => 'MyArn',    # min: 20, max: 500
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateCampaignResponse->Arn;
    my $Id   = $CreateCampaignResponse->Id;
    my $Tags = $CreateCampaignResponse->Tags;

    # Returns a L<Paws::ConnectCampaignsV2::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/CreateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelSubtypeConfig => L<Paws::ConnectCampaignsV2::ChannelSubtypeConfig>





=head2 CommunicationLimitsOverride => L<Paws::ConnectCampaignsV2::CommunicationLimitsConfig>





=head2 CommunicationTimeConfig => L<Paws::ConnectCampaignsV2::CommunicationTimeConfig>





=head2 ConnectCampaignFlowArn => Str





=head2 B<REQUIRED> ConnectInstanceId => Str





=head2 B<REQUIRED> Name => Str





=head2 Schedule => L<Paws::ConnectCampaignsV2::Schedule>





=head2 Source => L<Paws::ConnectCampaignsV2::Source>





=head2 Tags => L<Paws::ConnectCampaignsV2::TagMap>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

