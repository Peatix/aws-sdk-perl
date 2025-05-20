
package Paws::Datasync::DescribeLocationHdfsResponse;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has BlockSize => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str');
  has KerberosPrincipal => (is => 'ro', isa => 'Str');
  has KmsKeyProviderUri => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has NameNodes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::HdfsNameNode]');
  has QopConfiguration => (is => 'ro', isa => 'Paws::Datasync::QopConfiguration');
  has ReplicationFactor => (is => 'ro', isa => 'Int');
  has SimpleUser => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationHdfsResponse

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The ARNs of the DataSync agents that can connect with your HDFS
cluster.


=head2 AuthenticationType => Str

The type of authentication used to determine the identity of the user.

Valid values are: C<"SIMPLE">, C<"KERBEROS">
=head2 BlockSize => Int

The size of the data blocks to write into the HDFS cluster.


=head2 CreationTime => Str

The time that the HDFS location was created.


=head2 KerberosPrincipal => Str

The Kerberos principal with access to the files and folders on the HDFS
cluster. This parameter is used if the C<AuthenticationType> is defined
as C<KERBEROS>.


=head2 KmsKeyProviderUri => Str

The URI of the HDFS cluster's Key Management Server (KMS).


=head2 LocationArn => Str

The ARN of the HDFS location.


=head2 LocationUri => Str

The URI of the HDFS location.


=head2 NameNodes => ArrayRef[L<Paws::Datasync::HdfsNameNode>]

The NameNode that manages the HDFS namespace.


=head2 QopConfiguration => L<Paws::Datasync::QopConfiguration>

The Quality of Protection (QOP) configuration, which specifies the
Remote Procedure Call (RPC) and data transfer protection settings
configured on the HDFS cluster.


=head2 ReplicationFactor => Int

The number of DataNodes to replicate the data to when writing to the
HDFS cluster.


=head2 SimpleUser => Str

The user name to identify the client on the host operating system. This
parameter is used if the C<AuthenticationType> is defined as C<SIMPLE>.


=head2 _request_id => Str


=cut

1;