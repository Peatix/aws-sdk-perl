
package Paws::Datasync::UpdateLocationObjectStorage;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Str');
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has SecretKey => (is => 'ro', isa => 'Str');
  has ServerCertificate => (is => 'ro', isa => 'Str');
  has ServerHostname => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');
  has ServerProtocol => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationObjectStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationObjectStorageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationObjectStorage - Arguments for method UpdateLocationObjectStorage on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationObjectStorage on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationObjectStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationObjectStorage.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationObjectStorageResponse =
      $datasync->UpdateLocationObjectStorage(
      LocationArn => 'MyLocationArn',
      AccessKey   => 'MyObjectStorageAccessKey',    # OPTIONAL
      AgentArns   => [
        'MyAgentArn', ...                           # max: 128
      ],    # OPTIONAL
      SecretKey         => 'MyObjectStorageSecretKey',        # OPTIONAL
      ServerCertificate => 'BlobObjectStorageCertificate',    # OPTIONAL
      ServerHostname    => 'MyServerHostname',                # OPTIONAL
      ServerPort        => 1,                                 # OPTIONAL
      ServerProtocol    => 'HTTPS',                           # OPTIONAL
      Subdirectory      => 'MyS3Subdirectory',                # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationObjectStorage>

=head1 ATTRIBUTES


=head2 AccessKey => Str

Specifies the access key (for example, a user name) if credentials are
required to authenticate with the object storage server.



=head2 AgentArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
can connect with your object storage system.



=head2 B<REQUIRED> LocationArn => Str

Specifies the ARN of the object storage system location that you're
updating.



=head2 SecretKey => Str

Specifies the secret key (for example, a password) if credentials are
required to authenticate with the object storage server.



=head2 ServerCertificate => Str

Specifies a certificate chain for DataSync to authenticate with your
object storage system if the system uses a private or self-signed
certificate authority (CA). You must specify a single C<.pem> file with
a full certificate chain (for example,
C<file:///home/user/.ssh/object_storage_certificates.pem>).

The certificate chain might include:

=over

=item *

The object storage system's certificate

=item *

All intermediate certificates (if there are any)

=item *

The root certificate of the signing CA

=back

You can concatenate your certificates into a C<.pem> file (which can be
up to 32768 bytes before base64 encoding). The following example C<cat>
command creates an C<object_storage_certificates.pem> file that
includes three certificates:

C<cat object_server_certificate.pem intermediate_certificate.pem
ca_root_certificate.pem E<gt> object_storage_certificates.pem>

To use this parameter, configure C<ServerProtocol> to C<HTTPS>.

Updating this parameter doesn't interfere with tasks that you have in
progress.



=head2 ServerHostname => Str

Specifies the domain name or IP version 4 (IPv4) address of the object
storage server that your DataSync agent connects to.



=head2 ServerPort => Int

Specifies the port that your object storage server accepts inbound
network traffic on (for example, port 443).



=head2 ServerProtocol => Str

Specifies the protocol that your object storage server uses to
communicate.

Valid values are: C<"HTTPS">, C<"HTTP">

=head2 Subdirectory => Str

Specifies the object prefix for your object storage server. If this is
a source location, DataSync only copies objects with this prefix. If
this is a destination location, DataSync writes all objects with this
prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationObjectStorage in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

