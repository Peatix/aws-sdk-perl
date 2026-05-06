package Paws::ConnectCampaigns;
  use Moose;
  sub service { 'connect-campaigns' }
  sub signing_name { 'connect-campaigns' }
  sub version { '2021-01-30' }
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
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnectInstanceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::DeleteConnectInstanceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceOnboardingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::DeleteInstanceOnboardingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::DescribeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::GetCampaignState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignStateBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::GetCampaignStateBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectInstanceConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::GetConnectInstanceConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceOnboardingJobStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::GetInstanceOnboardingJobStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::ListCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::PauseCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDialRequestBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::PutDialRequestBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::ResumeCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::StartCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstanceOnboardingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::StartInstanceOnboardingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::StopCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignDialerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::UpdateCampaignDialerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::UpdateCampaignName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaignOutboundCallConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCampaigns::UpdateCampaignOutboundCallConfig', @_);
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


  sub operations { qw/CreateCampaign DeleteCampaign DeleteConnectInstanceConfig DeleteInstanceOnboardingJob DescribeCampaign GetCampaignState GetCampaignStateBatch GetConnectInstanceConfig GetInstanceOnboardingJobStatus ListCampaigns ListTagsForResource PauseCampaign PutDialRequestBatch ResumeCampaign StartCampaign StartInstanceOnboardingJob StopCampaign TagResource UntagResource UpdateCampaignDialerConfig UpdateCampaignName UpdateCampaignOutboundCallConfig / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns - Perl Interface to AWS AmazonConnectCampaignService

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectCampaigns');
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

=item ConnectInstanceId => Str

=item DialerConfig => L<Paws::ConnectCampaigns::DialerConfig>

=item Name => Str

=item OutboundCallConfig => L<Paws::ConnectCampaigns::OutboundCallConfig>

=item [Tags => L<Paws::ConnectCampaigns::TagMap>]


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::CreateCampaign>

Returns: a L<Paws::ConnectCampaigns::CreateCampaignResponse> instance

Creates a campaign for the specified Amazon Connect account. This API
is idempotent.


=head2 DeleteCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::DeleteCampaign>

Returns: nothing

Deletes a campaign from the specified Amazon Connect account.


=head2 DeleteConnectInstanceConfig

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::DeleteConnectInstanceConfig>

Returns: nothing

Deletes a connect instance config from the specified AWS account.


=head2 DeleteInstanceOnboardingJob

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::DeleteInstanceOnboardingJob>

Returns: nothing

Delete the Connect Campaigns onboarding job for the specified Amazon
Connect instance.


=head2 DescribeCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::DescribeCampaign>

Returns: a L<Paws::ConnectCampaigns::DescribeCampaignResponse> instance

Describes the specific campaign.


=head2 GetCampaignState

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::GetCampaignState>

Returns: a L<Paws::ConnectCampaigns::GetCampaignStateResponse> instance

Get state of a campaign for the specified Amazon Connect account.


=head2 GetCampaignStateBatch

=over

=item CampaignIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::GetCampaignStateBatch>

Returns: a L<Paws::ConnectCampaigns::GetCampaignStateBatchResponse> instance

Get state of campaigns for the specified Amazon Connect account.


=head2 GetConnectInstanceConfig

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::GetConnectInstanceConfig>

Returns: a L<Paws::ConnectCampaigns::GetConnectInstanceConfigResponse> instance

Get the specific Connect instance config.


=head2 GetInstanceOnboardingJobStatus

=over

=item ConnectInstanceId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::GetInstanceOnboardingJobStatus>

Returns: a L<Paws::ConnectCampaigns::GetInstanceOnboardingJobStatusResponse> instance

Get the specific instance onboarding job status.


=head2 ListCampaigns

=over

=item [Filters => L<Paws::ConnectCampaigns::CampaignFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::ListCampaigns>

Returns: a L<Paws::ConnectCampaigns::ListCampaignsResponse> instance

Provides summary information about the campaigns under the specified
Amazon Connect account.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::ListTagsForResource>

Returns: a L<Paws::ConnectCampaigns::ListTagsForResourceResponse> instance

List tags for a resource.


=head2 PauseCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::PauseCampaign>

Returns: nothing

Pauses a campaign for the specified Amazon Connect account.


=head2 PutDialRequestBatch

=over

=item DialRequests => ArrayRef[L<Paws::ConnectCampaigns::DialRequest>]

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::PutDialRequestBatch>

Returns: a L<Paws::ConnectCampaigns::PutDialRequestBatchResponse> instance

Creates dials requests for the specified campaign Amazon Connect
account. This API is idempotent.


=head2 ResumeCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::ResumeCampaign>

Returns: nothing

Stops a campaign for the specified Amazon Connect account.


=head2 StartCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::StartCampaign>

Returns: nothing

Starts a campaign for the specified Amazon Connect account.


=head2 StartInstanceOnboardingJob

=over

=item ConnectInstanceId => Str

=item EncryptionConfig => L<Paws::ConnectCampaigns::EncryptionConfig>


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::StartInstanceOnboardingJob>

Returns: a L<Paws::ConnectCampaigns::StartInstanceOnboardingJobResponse> instance

Onboard the specific Amazon Connect instance to Connect Campaigns.


=head2 StopCampaign

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::StopCampaign>

Returns: nothing

Stops a campaign for the specified Amazon Connect account.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::ConnectCampaigns::TagMap>


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::TagResource>

Returns: nothing

Tag a resource.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::UntagResource>

Returns: nothing

Untag a resource.


=head2 UpdateCampaignDialerConfig

=over

=item DialerConfig => L<Paws::ConnectCampaigns::DialerConfig>

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::UpdateCampaignDialerConfig>

Returns: nothing

Updates the dialer config of a campaign. This API is idempotent.


=head2 UpdateCampaignName

=over

=item Id => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::UpdateCampaignName>

Returns: nothing

Updates the name of a campaign. This API is idempotent.


=head2 UpdateCampaignOutboundCallConfig

=over

=item Id => Str

=item [AnswerMachineDetectionConfig => L<Paws::ConnectCampaigns::AnswerMachineDetectionConfig>]

=item [ConnectContactFlowId => Str]

=item [ConnectSourcePhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCampaigns::UpdateCampaignOutboundCallConfig>

Returns: nothing

Updates the outbound call config of a campaign. This API is idempotent.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCampaigns(sub { },[Filters => L<Paws::ConnectCampaigns::CampaignFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllCampaigns([Filters => L<Paws::ConnectCampaigns::CampaignFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - campaignSummaryList, passing the object as the first parameter, and the string 'campaignSummaryList' as the second parameter 

If not, it will return a a L<Paws::ConnectCampaigns::ListCampaignsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

