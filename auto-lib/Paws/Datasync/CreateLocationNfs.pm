
package Paws::Datasync::CreateLocationNfs;
  use Moose;
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::NfsMountOptions');
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig', required => 1);
  has ServerHostname => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationNfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationNfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationNfs - Arguments for method CreateLocationNfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationNfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationNfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationNfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationNfsResponse = $datasync->CreateLocationNfs(
      OnPremConfig => {
        AgentArns => [
          'MyAgentArn', ...    # max: 128
        ],    # min: 1, max: 4

      },
      ServerHostname => 'MyServerHostname',
      Subdirectory   => 'MyNfsSubdirectory',
      MountOptions   => {
        Version =>
          'AUTOMATIC',    # values: AUTOMATIC, NFS3, NFS4_0, NFS4_1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationNfsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationNfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationNfs>

=head1 ATTRIBUTES


=head2 MountOptions => L<Paws::Datasync::NfsMountOptions>

Specifies the options that DataSync can use to mount your NFS file
server.



=head2 B<REQUIRED> OnPremConfig => L<Paws::Datasync::OnPremConfig>

Specifies the Amazon Resource Name (ARN) of the DataSync agent that can
connect to your NFS file server.

You can specify more than one agent. For more information, see Using
multiple DataSync agents
(https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#multiple-agents).



=head2 B<REQUIRED> ServerHostname => Str

Specifies the DNS name or IP version 4 address of the NFS file server
that your DataSync agent connects to.



=head2 B<REQUIRED> Subdirectory => Str

Specifies the export path in your NFS file server that you want
DataSync to mount.

This path (or a subdirectory of the path) is where DataSync transfers
data to or from. For information on configuring an export for DataSync,
see Accessing NFS file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs).



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationNfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

