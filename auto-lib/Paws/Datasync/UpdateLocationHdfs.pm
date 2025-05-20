
package Paws::Datasync::UpdateLocationHdfs;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has BlockSize => (is => 'ro', isa => 'Int');
  has KerberosKeytab => (is => 'ro', isa => 'Str');
  has KerberosKrb5Conf => (is => 'ro', isa => 'Str');
  has KerberosPrincipal => (is => 'ro', isa => 'Str');
  has KmsKeyProviderUri => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has NameNodes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::HdfsNameNode]');
  has QopConfiguration => (is => 'ro', isa => 'Paws::Datasync::QopConfiguration');
  has ReplicationFactor => (is => 'ro', isa => 'Int');
  has SimpleUser => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationHdfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationHdfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationHdfs - Arguments for method UpdateLocationHdfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationHdfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationHdfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationHdfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationHdfsResponse = $datasync->UpdateLocationHdfs(
      LocationArn => 'MyLocationArn',
      AgentArns   => [
        'MyAgentArn', ...    # max: 128
      ],    # OPTIONAL
      AuthenticationType => 'SIMPLE',                      # OPTIONAL
      BlockSize          => 1,                             # OPTIONAL
      KerberosKeytab     => 'BlobKerberosKeytabFile',      # OPTIONAL
      KerberosKrb5Conf   => 'BlobKerberosKrb5ConfFile',    # OPTIONAL
      KerberosPrincipal  => 'MyKerberosPrincipal',         # OPTIONAL
      KmsKeyProviderUri  => 'MyKmsKeyProviderUri',         # OPTIONAL
      NameNodes          => [
        {
          Hostname => 'MyHdfsServerHostname',    # min: 1, max: 255
          Port     => 1,                         # min: 1, max: 65536

        },
        ...
      ],    # OPTIONAL
      QopConfiguration => {
        DataTransferProtection => 'DISABLED'
        ,    # values: DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY; OPTIONAL
        RpcProtection => 'DISABLED'
        ,    # values: DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY; OPTIONAL
      },    # OPTIONAL
      ReplicationFactor => 1,                       # OPTIONAL
      SimpleUser        => 'MyHdfsUser',            # OPTIONAL
      Subdirectory      => 'MyHdfsSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationHdfs>

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the DataSync agents that can
connect to your HDFS cluster.



=head2 AuthenticationType => Str

The type of authentication used to determine the identity of the user.

Valid values are: C<"SIMPLE">, C<"KERBEROS">

=head2 BlockSize => Int

The size of the data blocks to write into the HDFS cluster.



=head2 KerberosKeytab => Str

The Kerberos key table (keytab) that contains mappings between the
defined Kerberos principal and the encrypted keys. You can load the
keytab from a file by providing the file's address. If you use the CLI,
it performs base64 encoding for you. Otherwise, provide the
base64-encoded text.



=head2 KerberosKrb5Conf => Str

The C<krb5.conf> file that contains the Kerberos configuration
information. You can load the C<krb5.conf> file by providing the file's
address. If you're using the CLI, it performs the base64 encoding for
you. Otherwise, provide the base64-encoded text.



=head2 KerberosPrincipal => Str

The Kerberos principal with access to the files and folders on the HDFS
cluster.



=head2 KmsKeyProviderUri => Str

The URI of the HDFS cluster's Key Management Server (KMS).



=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the source HDFS cluster location.



=head2 NameNodes => ArrayRef[L<Paws::Datasync::HdfsNameNode>]

The NameNode that manages the HDFS namespace. The NameNode performs
operations such as opening, closing, and renaming files and
directories. The NameNode contains the information to map blocks of
data to the DataNodes. You can use only one NameNode.



=head2 QopConfiguration => L<Paws::Datasync::QopConfiguration>

The Quality of Protection (QOP) configuration specifies the Remote
Procedure Call (RPC) and data transfer privacy settings configured on
the Hadoop Distributed File System (HDFS) cluster.



=head2 ReplicationFactor => Int

The number of DataNodes to replicate the data to when writing to the
HDFS cluster.



=head2 SimpleUser => Str

The user name used to identify the client on the host operating system.



=head2 Subdirectory => Str

A subdirectory in the HDFS cluster. This subdirectory is used to read
data from or write data to the HDFS cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationHdfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

