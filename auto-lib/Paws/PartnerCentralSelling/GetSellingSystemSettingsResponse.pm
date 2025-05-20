
package Paws::PartnerCentralSelling::GetSellingSystemSettingsResponse;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotJobRoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetSellingSystemSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the settings are defined. Acceptable
values include C<AWS> for production and C<Sandbox> for testing
environments.


=head2 ResourceSnapshotJobRoleArn => Str

Specifies the ARN of the IAM Role used for resource snapshot job
executions.


=head2 _request_id => Str


=cut

1;