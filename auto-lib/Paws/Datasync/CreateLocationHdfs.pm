
package Paws::Datasync::CreateLocationHdfs;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has BlockSize => (is => 'ro', isa => 'Int');
  has KerberosKeytab => (is => 'ro', isa => 'Str');
  has KerberosKrb5Conf => (is => 'ro', isa => 'Str');
  has KerberosPrincipal => (is => 'ro', isa => 'Str');
  has KmsKeyProviderUri => (is => 'ro', isa => 'Str');
  has NameNodes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::HdfsNameNode]', required => 1);
  has QopConfiguration => (is => 'ro', isa => 'Paws::Datasync::QopConfiguration');
  has ReplicationFactor => (is => 'ro', isa => 'Int');
  has SimpleUser => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationHdfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationHdfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationHdfs - Arguments for method CreateLocationHdfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationHdfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationHdfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationHdfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationHdfsResponse = $datasync->CreateLocationHdfs(
      AgentArns => [
        'MyAgentArn', ...    # max: 128
      ],
      AuthenticationType => 'SIMPLE',
      NameNodes          => [
        {
          Hostname => 'MyHdfsServerHostname',    # min: 1, max: 255
          Port     => 1,                         # min: 1, max: 65536

        },
        ...
      ],
      BlockSize         => 1,                             # OPTIONAL
      KerberosKeytab    => 'BlobKerberosKeytabFile',      # OPTIONAL
      KerberosKrb5Conf  => 'BlobKerberosKrb5ConfFile',    # OPTIONAL
      KerberosPrincipal => 'MyKerberosPrincipal',         # OPTIONAL
      KmsKeyProviderUri => 'MyKmsKeyProviderUri',         # OPTIONAL
      QopConfiguration  => {
        DataTransferProtection => 'DISABLED'
        ,    # values: DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY; OPTIONAL
        RpcProtection => 'DISABLED'
        ,    # values: DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY; OPTIONAL
      },    # OPTIONAL
      ReplicationFactor => 1,                       # OPTIONAL
      SimpleUser        => 'MyHdfsUser',            # OPTIONAL
      Subdirectory      => 'MyHdfsSubdirectory',    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationHdfsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationHdfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationHdfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the DataSync agents that can
connect to your HDFS cluster.



=head2 B<REQUIRED> AuthenticationType => Str

The type of authentication used to determine the identity of the user.

Valid values are: C<"SIMPLE">, C<"KERBEROS">

=head2 BlockSize => Int

The size of data blocks to write into the HDFS cluster. The block size
must be a multiple of 512 bytes. The default block size is 128
mebibytes (MiB).



=head2 KerberosKeytab => Str

The Kerberos key table (keytab) that contains mappings between the
defined Kerberos principal and the encrypted keys. You can load the
keytab from a file by providing the file's address. If you're using the
CLI, it performs base64 encoding for you. Otherwise, provide the
base64-encoded text.

If C<KERBEROS> is specified for C<AuthenticationType>, this parameter
is required.



=head2 KerberosKrb5Conf => Str

The C<krb5.conf> file that contains the Kerberos configuration
information. You can load the C<krb5.conf> file by providing the file's
address. If you're using the CLI, it performs the base64 encoding for
you. Otherwise, provide the base64-encoded text.

If C<KERBEROS> is specified for C<AuthenticationType>, this parameter
is required.



=head2 KerberosPrincipal => Str

The Kerberos principal with access to the files and folders on the HDFS
cluster.

If C<KERBEROS> is specified for C<AuthenticationType>, this parameter
is required.



=head2 KmsKeyProviderUri => Str

The URI of the HDFS cluster's Key Management Server (KMS).



=head2 B<REQUIRED> NameNodes => ArrayRef[L<Paws::Datasync::HdfsNameNode>]

The NameNode that manages the HDFS namespace. The NameNode performs
operations such as opening, closing, and renaming files and
directories. The NameNode contains the information to map blocks of
data to the DataNodes. You can use only one NameNode.



=head2 QopConfiguration => L<Paws::Datasync::QopConfiguration>

The Quality of Protection (QOP) configuration specifies the Remote
Procedure Call (RPC) and data transfer protection settings configured
on the Hadoop Distributed File System (HDFS) cluster. If
C<QopConfiguration> isn't specified, C<RpcProtection> and
C<DataTransferProtection> default to C<PRIVACY>. If you set
C<RpcProtection> or C<DataTransferProtection>, the other parameter
assumes the same value.



=head2 ReplicationFactor => Int

The number of DataNodes to replicate the data to when writing to the
HDFS cluster. By default, data is replicated to three DataNodes.



=head2 SimpleUser => Str

The user name used to identify the client on the host operating system.

If C<SIMPLE> is specified for C<AuthenticationType>, this parameter is
required.



=head2 Subdirectory => Str

A subdirectory in the HDFS cluster. This subdirectory is used to read
data from or write data to the HDFS cluster. If the subdirectory isn't
specified, it will default to C</>.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
location. The value can be an empty string. We recommend using tags to
name your resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationHdfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

