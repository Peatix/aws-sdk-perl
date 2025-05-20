
package Paws::IoT::GetPackageConfigurationResponse;
  use Moose;
  has VersionUpdateByJobsConfig => (is => 'ro', isa => 'Paws::IoT::VersionUpdateByJobsConfig', traits => ['NameInRequest'], request_name => 'versionUpdateByJobsConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackageConfigurationResponse

=head1 ATTRIBUTES


=head2 VersionUpdateByJobsConfig => L<Paws::IoT::VersionUpdateByJobsConfig>

The version that is associated to a specific job.


=head2 _request_id => Str


=cut

