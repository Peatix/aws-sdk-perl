
package Paws::ConnectCampaigns::GetInstanceOnboardingJobStatusResponse;
  use Moose;
  has ConnectInstanceOnboardingJobStatus => (is => 'ro', isa => 'Paws::ConnectCampaigns::InstanceOnboardingJobStatus', traits => ['NameInRequest'], request_name => 'connectInstanceOnboardingJobStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::GetInstanceOnboardingJobStatusResponse

=head1 ATTRIBUTES


=head2 ConnectInstanceOnboardingJobStatus => L<Paws::ConnectCampaigns::InstanceOnboardingJobStatus>




=head2 _request_id => Str


=cut

