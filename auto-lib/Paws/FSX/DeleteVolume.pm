
package Paws::FSX::DeleteVolume;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has OntapConfiguration => (is => 'ro', isa => 'Paws::FSX::DeleteVolumeOntapConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::DeleteVolumeOpenZFSConfiguration');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DeleteVolumeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteVolume - Arguments for method DeleteVolume on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVolume on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DeleteVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVolume.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DeleteVolumeResponse = $fsx->DeleteVolume(
      VolumeId           => 'MyVolumeId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      OntapConfiguration => {
        BypassSnaplockEnterpriseRetention => 1,        # OPTIONAL
        FinalBackupTags                   => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256

          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
        SkipFinalBackup => 1,    # OPTIONAL
      },    # OPTIONAL
      OpenZFSConfiguration => {
        Options => [
          'DELETE_CHILD_VOLUMES_AND_SNAPSHOTS',
          ...    # values: DELETE_CHILD_VOLUMES_AND_SNAPSHOTS
        ],    # max: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Lifecycle     = $DeleteVolumeResponse->Lifecycle;
    my $OntapResponse = $DeleteVolumeResponse->OntapResponse;
    my $VolumeId      = $DeleteVolumeResponse->VolumeId;

    # Returns a L<Paws::FSX::DeleteVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DeleteVolume>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 OntapConfiguration => L<Paws::FSX::DeleteVolumeOntapConfiguration>

For Amazon FSx for ONTAP volumes, specify whether to take a final
backup of the volume and apply tags to the backup. To apply tags to the
backup, you must have the C<fsx:TagResource> permission.



=head2 OpenZFSConfiguration => L<Paws::FSX::DeleteVolumeOpenZFSConfiguration>

For Amazon FSx for OpenZFS volumes, specify whether to delete all child
volumes and snapshots.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume that you are deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVolume in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

