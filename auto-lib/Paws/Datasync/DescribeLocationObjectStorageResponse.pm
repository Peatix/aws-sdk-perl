
package Paws::Datasync::DescribeLocationObjectStorageResponse;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has ServerCertificate => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');
  has ServerProtocol => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationObjectStorageResponse

=head1 ATTRIBUTES


=head2 AccessKey => Str

The access key (for example, a user name) required to authenticate with
the object storage system.


=head2 AgentArns => ArrayRef[Str|Undef]

The ARNs of the DataSync agents that can connect with your object
storage system.


=head2 CreationTime => Str

The time that the location was created.


=head2 LocationArn => Str

The ARN of the object storage system location.


=head2 LocationUri => Str

The URI of the object storage system location.


=head2 ServerCertificate => Str

The certificate chain for DataSync to authenticate with your object
storage system if the system uses a private or self-signed certificate
authority (CA).


=head2 ServerPort => Int

The port that your object storage server accepts inbound network
traffic on (for example, port 443).


=head2 ServerProtocol => Str

The protocol that your object storage system uses to communicate.

Valid values are: C<"HTTPS">, C<"HTTP">
=head2 _request_id => Str


=cut

1;