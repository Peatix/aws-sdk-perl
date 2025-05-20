
package Paws::EFS::ReplicationConfigurationDescription;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Destination]', required => 1);
  has OriginalSourceFileSystemArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceFileSystemArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceFileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has SourceFileSystemOwnerId => (is => 'ro', isa => 'Str');
  has SourceFileSystemRegion => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::ReplicationConfigurationDescription

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

Describes when the replication configuration was created.


=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::EFS::Destination>]

An array of destination objects. Only one destination object is
supported.


=head2 B<REQUIRED> OriginalSourceFileSystemArn => Str

The Amazon Resource Name (ARN) of the original source EFS file system
in the replication configuration.


=head2 B<REQUIRED> SourceFileSystemArn => Str

The Amazon Resource Name (ARN) of the current source file system in the
replication configuration.


=head2 B<REQUIRED> SourceFileSystemId => Str

The ID of the source Amazon EFS file system that is being replicated.


=head2 SourceFileSystemOwnerId => Str

ID of the Amazon Web Services account in which the source file system
resides.


=head2 B<REQUIRED> SourceFileSystemRegion => Str

The Amazon Web Services Region in which the source EFS file system is
located.


=head2 _request_id => Str


=cut

