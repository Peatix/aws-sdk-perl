
package Paws::ConnectCampaignsV2::StartInstanceOnboardingJobResponse;
  use Moose;
  has ConnectInstanceOnboardingJobStatus => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::InstanceOnboardingJobStatus', traits => ['NameInRequest'], request_name => 'connectInstanceOnboardingJobStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::StartInstanceOnboardingJobResponse

=head1 ATTRIBUTES


=head2 ConnectInstanceOnboardingJobStatus => L<Paws::ConnectCampaignsV2::InstanceOnboardingJobStatus>




=head2 _request_id => Str


=cut

