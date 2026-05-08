package Paws::ConnectCampaignsV2;
  use Moose;
  sub service { 'connect-campaigns' }
  sub signing_name { 'connect-campaigns' }
  sub version { '2024-04-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaignChannelSubtypeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteCampaignChannelSubtypeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaignCommunicationLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteCampaignCommunicationLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaignCommunicationTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteCampaignCommunicationTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectInstanceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteConnectInstanceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectInstanceIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteConnectInstanceIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceOnboardingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DeleteInstanceOnboardingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::DescribeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::GetCampaignState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignStateBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::GetCampaignStateBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectInstanceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::GetConnectInstanceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceOnboardingJobStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::GetInstanceOnboardingJobStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::ListCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectInstanceIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::ListConnectInstanceIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::PauseCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConnectInstanceIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::PutConnectInstanceIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutOutboundRequestBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::PutOutboundRequestBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProfileOutboundRequestBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::ResumeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::StartCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstanceOnboardingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::StartInstanceOnboardingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::StopCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignChannelSubtypeConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignChannelSubtypeConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignCommunicationLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignCommunicationLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignCommunicationTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignCommunicationTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignFlowAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignFlowAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaignsV2::UpdateCampaignSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCampaigns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCampaigns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCampaigns(@_, nextToken => $next_result->nextToken);
        push @{ $result->campaignSummaryList }, @{ $next_result->campaignSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'campaignSummaryList') foreach (@{ $result->campaignSummaryList });
        $result = $self->ListCampaigns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'campaignSummaryList') foreach (@{ $result->campaignSummaryList });
    }

    return undef
  }
  sub ListAllConnectInstanceIntegrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectInstanceIntegrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConnectInstanceIntegrations(@_, nextToken => $next_result->nextToken);
        push @{ $result->integrationSummaryList }, @{ $next_result->integrationSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'integrationSummaryList') foreach (@{ $result->integrationSummaryList });
        $result = $self->ListConnectInstanceIntegrations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'integrationSummaryList') foreach (@{ $result->integrationSummaryList });
    }

    return undef
  }


  sub operations { qw/CreateCampaign DeleteCampaign DeleteCampaignChannelSubtypeConfig DeleteCampaignCommunicationLimits DeleteCampaignCommunicationTime DeleteConnectInstanceConfig DeleteConnectInstanceIntegration DeleteInstanceOnboardingJob DescribeCampaign GetCampaignState GetCampaignStateBatch GetConnectInstanceConfig GetInstanceOnboardingJobStatus ListCampaigns ListConnectInstanceIntegrations ListTagsForResource PauseCampaign PutConnectInstanceIntegration PutOutboundRequestBatch PutProfileOutboundRequestBatch ResumeCampaign StartCampaign StartInstanceOnboardingJob StopCampaign TagResource UntagResource UpdateCampaignChannelSubtypeConfig UpdateCampaignCommunicationLimits UpdateCampaignCommunicationTime UpdateCampaignFlowAssociation UpdateCampaignName UpdateCampaignSchedule UpdateCampaignSource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2 - Perl Interface to AWS AmazonConnectCampaignServiceV2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectCampaignsV2');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Provide APIs to create and manage Amazon Connect Campaigns.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCampaign

=over

=item ChannelSubtypeConfig => L<Paws::ConnectCampaignsV2::ChannelSubtypeConfig>

=item ConnectInstanceId => Str

=item Name => Str

=item [CommunicationLimitsOverride => L<Paws::ConnectCampaignsV2::CommunicationLimitsConfig>]

=item [CommunicationTimeConfig => L<Paws::ConnectCampaignsV2::CommunicationTimeConfig>]

=item [ConnectCampaignFlowArn => Str]

=item [Schedule => L<Paws::ConnectCampaignsV2::Schedule>]

=item [Source => L<Paws::ConnectCampaignsV2::Source>]

=item [Tags => L<Paws::ConnectCampaignsV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::CreateCampaign>

Returns: a L<Paws::ConnectCampaignsV2::CreateCampaignResponse> instance

Creates a campaign for the specified Amazon Connect account. This API
is idempotent.


=head2 DeleteCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteCampaign>

Returns: nothing

Deletes a campaign from the specified Amazon Connect account.


=head2 DeleteCampaignChannelSubtypeConfig

=over

=item ChannelSubtype => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteCampaignChannelSubtypeConfig>

Returns: nothing

Deletes the channel subtype config of a campaign. This API is
idempotent.


=head2 DeleteCampaignCommunicationLimits

=over

=item Config => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteCampaignCommunicationLimits>

Returns: nothing

Deletes the communication limits config for a campaign. This API is
idempotent.


=head2 DeleteCampaignCommunicationTime

=over

=item Config => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteCampaignCommunicationTime>

Returns: nothing

Deletes the communication time config for a campaign. This API is
idempotent.


=head2 DeleteConnectInstanceConfig

=over

=item ConnectInstanceId => Str

=item [CampaignDeletionPolicy => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteConnectInstanceConfig>

Returns: nothing

Deletes a connect instance config from the specified AWS account.


=head2 DeleteConnectInstanceIntegration

=over

=item ConnectInstanceId => Str

=item IntegrationIdentifier => L<Paws::ConnectCampaignsV2::IntegrationIdentifier>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteConnectInstanceIntegration>

Returns: nothing

Delete the integration for the specified Amazon Connect instance.


=head2 DeleteInstanceOnboardingJob

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DeleteInstanceOnboardingJob>

Returns: nothing

Delete the Connect Campaigns onboarding job for the specified Amazon
Connect instance.


=head2 DescribeCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::DescribeCampaign>

Returns: a L<Paws::ConnectCampaignsV2::DescribeCampaignResponse> instance

Describes the specific campaign.


=head2 GetCampaignState

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::GetCampaignState>

Returns: a L<Paws::ConnectCampaignsV2::GetCampaignStateResponse> instance

Get state of a campaign for the specified Amazon Connect account.


=head2 GetCampaignStateBatch

=over

=item CampaignIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::GetCampaignStateBatch>

Returns: a L<Paws::ConnectCampaignsV2::GetCampaignStateBatchResponse> instance

Get state of campaigns for the specified Amazon Connect account.


=head2 GetConnectInstanceConfig

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::GetConnectInstanceConfig>

Returns: a L<Paws::ConnectCampaignsV2::GetConnectInstanceConfigResponse> instance

Get the specific Connect instance config.


=head2 GetInstanceOnboardingJobStatus

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::GetInstanceOnboardingJobStatus>

Returns: a L<Paws::ConnectCampaignsV2::GetInstanceOnboardingJobStatusResponse> instance

Get the specific instance onboarding job status.


=head2 ListCampaigns

=over

=item [Filters => L<Paws::ConnectCampaignsV2::CampaignFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::ListCampaigns>

Returns: a L<Paws::ConnectCampaignsV2::ListCampaignsResponse> instance

Provides summary information about the campaigns under the specified
Amazon Connect account.


=head2 ListConnectInstanceIntegrations

=over

=item ConnectInstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::ListConnectInstanceIntegrations>

Returns: a L<Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse> instance

Provides summary information about the integration under the specified
Connect instance.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::ListTagsForResource>

Returns: a L<Paws::ConnectCampaignsV2::ListTagsForResourceResponse> instance

List tags for a resource.


=head2 PauseCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::PauseCampaign>

Returns: nothing

Pauses a campaign for the specified Amazon Connect account.


=head2 PutConnectInstanceIntegration

=over

=item ConnectInstanceId => Str

=item IntegrationConfig => L<Paws::ConnectCampaignsV2::IntegrationConfig>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::PutConnectInstanceIntegration>

Returns: nothing

Put or update the integration for the specified Amazon Connect
instance.


=head2 PutOutboundRequestBatch

=over

=item Id => Str

=item OutboundRequests => ArrayRef[L<Paws::ConnectCampaignsV2::OutboundRequest>]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::PutOutboundRequestBatch>

Returns: a L<Paws::ConnectCampaignsV2::PutOutboundRequestBatchResponse> instance

Creates outbound requests for the specified campaign Amazon Connect
account. This API is idempotent.


=head2 PutProfileOutboundRequestBatch

=over

=item Id => Str

=item ProfileOutboundRequests => ArrayRef[L<Paws::ConnectCampaignsV2::ProfileOutboundRequest>]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatch>

Returns: a L<Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatchResponse> instance

Takes in a list of profile outbound requests to be placed as part of an
outbound campaign. This API is idempotent.


=head2 ResumeCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::ResumeCampaign>

Returns: nothing

Stops a campaign for the specified Amazon Connect account.


=head2 StartCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::StartCampaign>

Returns: nothing

Starts a campaign for the specified Amazon Connect account.


=head2 StartInstanceOnboardingJob

=over

=item ConnectInstanceId => Str

=item EncryptionConfig => L<Paws::ConnectCampaignsV2::EncryptionConfig>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::StartInstanceOnboardingJob>

Returns: a L<Paws::ConnectCampaignsV2::StartInstanceOnboardingJobResponse> instance

Onboard the specific Amazon Connect instance to Connect Campaigns.


=head2 StopCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::StopCampaign>

Returns: nothing

Stops a campaign for the specified Amazon Connect account.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::ConnectCampaignsV2::TagMap>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::TagResource>

Returns: nothing

Tag a resource.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UntagResource>

Returns: nothing

Untag a resource.


=head2 UpdateCampaignChannelSubtypeConfig

=over

=item ChannelSubtypeConfig => L<Paws::ConnectCampaignsV2::ChannelSubtypeConfig>

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignChannelSubtypeConfig>

Returns: nothing

Updates the channel subtype config of a campaign. This API is
idempotent.


=head2 UpdateCampaignCommunicationLimits

=over

=item CommunicationLimitsOverride => L<Paws::ConnectCampaignsV2::CommunicationLimitsConfig>

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignCommunicationLimits>

Returns: nothing

Updates the communication limits config for a campaign. This API is
idempotent.


=head2 UpdateCampaignCommunicationTime

=over

=item CommunicationTimeConfig => L<Paws::ConnectCampaignsV2::CommunicationTimeConfig>

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignCommunicationTime>

Returns: nothing

Updates the communication time config for a campaign. This API is
idempotent.


=head2 UpdateCampaignFlowAssociation

=over

=item ConnectCampaignFlowArn => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignFlowAssociation>

Returns: nothing

Updates the campaign flow associated with a campaign. This API is
idempotent.


=head2 UpdateCampaignName

=over

=item Id => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignName>

Returns: nothing

Updates the name of a campaign. This API is idempotent.


=head2 UpdateCampaignSchedule

=over

=item Id => Str

=item Schedule => L<Paws::ConnectCampaignsV2::Schedule>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignSchedule>

Returns: nothing

Updates the schedule for a campaign. This API is idempotent.


=head2 UpdateCampaignSource

=over

=item Id => Str

=item Source => L<Paws::ConnectCampaignsV2::Source>


=back

Each argument is described in detail in: L<Paws::ConnectCampaignsV2::UpdateCampaignSource>

Returns: nothing

Updates the campaign source with a campaign. This API is idempotent.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCampaigns(sub { },[Filters => L<Paws::ConnectCampaignsV2::CampaignFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllCampaigns([Filters => L<Paws::ConnectCampaignsV2::CampaignFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaignSummaryList, passing the object as the first parameter, and the string 'campaignSummaryList' as the second parameter 

If not, it will return a a L<Paws::ConnectCampaignsV2::ListCampaignsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectInstanceIntegrations(sub { },ConnectInstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConnectInstanceIntegrations(ConnectInstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - integrationSummaryList, passing the object as the first parameter, and the string 'integrationSummaryList' as the second parameter 

If not, it will return a a L<Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

