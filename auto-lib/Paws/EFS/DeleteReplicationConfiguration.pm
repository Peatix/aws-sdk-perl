
package Paws::EFS::DeleteReplicationConfiguration;
  use Moose;
  has DeletionMode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deletionMode');
  has SourceFileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceFileSystemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DeleteReplicationConfiguration - Arguments for method DeleteReplicationConfiguration on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReplicationConfiguration on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DeleteReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReplicationConfiguration.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    $elasticfilesystem->DeleteReplicationConfiguration(
      SourceFileSystemId => 'MyFileSystemId',
      DeletionMode       => 'ALL_CONFIGURATIONS',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DeleteReplicationConfiguration>

=head1 ATTRIBUTES


=head2 DeletionMode => Str

When replicating across Amazon Web Services accounts or across Amazon
Web Services Regions, Amazon EFS deletes the replication configuration
from both the source and destination account or Region
(C<ALL_CONFIGURATIONS>) by default. If there's a configuration or
permissions issue that prevents Amazon EFS from deleting the
replication configuration from both sides, you can use the
C<LOCAL_CONFIGURATION_ONLY> mode to delete the replication
configuration from only the local side (the account or Region from
which the delete is performed).

Only use the C<LOCAL_CONFIGURATION_ONLY> mode in the case that Amazon
EFS is unable to delete the replication configuration in both the
source and destination account or Region. Deleting the local
configuration leaves the configuration in the other account or Region
unrecoverable.

Additionally, do not use this mode for same-account, same-region
replication as doing so results in a BadRequest exception error.

Valid values are: C<"ALL_CONFIGURATIONS">, C<"LOCAL_CONFIGURATION_ONLY">

=head2 B<REQUIRED> SourceFileSystemId => Str

The ID of the source file system in the replication configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReplicationConfiguration in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

