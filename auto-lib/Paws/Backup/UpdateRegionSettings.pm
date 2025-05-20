
package Paws::Backup::UpdateRegionSettings;
  use Moose;
  has ResourceTypeManagementPreference => (is => 'ro', isa => 'Paws::Backup::ResourceTypeManagementPreference');
  has ResourceTypeOptInPreference => (is => 'ro', isa => 'Paws::Backup::ResourceTypeOptInPreference');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRegionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRegionSettings - Arguments for method UpdateRegionSettings on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRegionSettings on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateRegionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRegionSettings.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->UpdateRegionSettings(
      ResourceTypeManagementPreference => { 'MyResourceType' => 1, }, # OPTIONAL
      ResourceTypeOptInPreference      => { 'MyResourceType' => 1, }, # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateRegionSettings>

=head1 ATTRIBUTES


=head2 ResourceTypeManagementPreference => L<Paws::Backup::ResourceTypeManagementPreference>

Enables or disables full Backup management of backups for a resource
type. To enable full Backup management for DynamoDB along with Backup's
advanced DynamoDB backup features
(https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html),
follow the procedure to enable advanced DynamoDB backup
programmatically
(https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli).



=head2 ResourceTypeOptInPreference => L<Paws::Backup::ResourceTypeOptInPreference>

Updates the list of services along with the opt-in preferences for the
Region.

If resource assignments are only based on tags, then service opt-in
settings are applied. If a resource type is explicitly assigned to a
backup plan, such as Amazon S3, Amazon EC2, or Amazon RDS, it will be
included in the backup even if the opt-in is not enabled for that
particular service. If both a resource type and tags are specified in a
resource assignment, the resource type specified in the backup plan
takes priority over the tag condition. Service opt-in settings are
disregarded in this situation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRegionSettings in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

