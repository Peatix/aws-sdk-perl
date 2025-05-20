
package Paws::Backup::DescribeRegionSettingsOutput;
  use Moose;
  has ResourceTypeManagementPreference => (is => 'ro', isa => 'Paws::Backup::ResourceTypeManagementPreference');
  has ResourceTypeOptInPreference => (is => 'ro', isa => 'Paws::Backup::ResourceTypeOptInPreference');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRegionSettingsOutput

=head1 ATTRIBUTES


=head2 ResourceTypeManagementPreference => L<Paws::Backup::ResourceTypeManagementPreference>

Returns whether Backup fully manages the backups for a resource type.

For the benefits of full Backup management, see Full Backup management
(https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management).

For a list of resource types and whether each supports full Backup
management, see the Feature availability by resource
(https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource)
table.

If C<"DynamoDB":false>, you can enable full Backup management for
DynamoDB backup by enabling Backup's advanced DynamoDB backup features
(https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli).


=head2 ResourceTypeOptInPreference => L<Paws::Backup::ResourceTypeOptInPreference>

The services along with the opt-in preferences in the Region.


=head2 _request_id => Str


=cut

