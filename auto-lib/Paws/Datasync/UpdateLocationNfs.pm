
package Paws::Datasync::UpdateLocationNfs;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::NfsMountOptions');
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig');
  has ServerHostname => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationNfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationNfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationNfs - Arguments for method UpdateLocationNfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationNfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationNfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationNfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationNfsResponse = $datasync->UpdateLocationNfs(
      LocationArn  => 'MyLocationArn',
      MountOptions => {
        Version =>
          'AUTOMATIC',    # values: AUTOMATIC, NFS3, NFS4_0, NFS4_1; OPTIONAL
      },    # OPTIONAL
      OnPremConfig => {
        AgentArns => [
          'MyAgentArn', ...    # max: 128
        ],    # min: 1, max: 4

      },    # OPTIONAL
      ServerHostname => 'MyServerHostname',     # OPTIONAL
      Subdirectory   => 'MyNfsSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationNfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the NFS transfer location
that you want to update.



=head2 MountOptions => L<Paws::Datasync::NfsMountOptions>





=head2 OnPremConfig => L<Paws::Datasync::OnPremConfig>





=head2 ServerHostname => Str

Specifies the DNS name or IP version 4 (IPv4) address of the NFS file
server that your DataSync agent connects to.



=head2 Subdirectory => Str

Specifies the export path in your NFS file server that you want
DataSync to mount.

This path (or a subdirectory of the path) is where DataSync transfers
data to or from. For information on configuring an export for DataSync,
see Accessing NFS file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationNfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

