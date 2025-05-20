
package Paws::Transfer::CreateUser;
  use Moose;
  has HomeDirectory => (is => 'ro', isa => 'Str');
  has HomeDirectoryMappings => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::HomeDirectoryMapEntry]');
  has HomeDirectoryType => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has PosixProfile => (is => 'ro', isa => 'Paws::Transfer::PosixProfile');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKeyBody => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateUser - Arguments for method CreateUser on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateUserResponse = $transfer->CreateUser(
      Role                  => 'MyRole',
      ServerId              => 'MyServerId',
      UserName              => 'MyUserName',
      HomeDirectory         => 'MyHomeDirectory',    # OPTIONAL
      HomeDirectoryMappings => [
        {
          Entry  => 'MyMapEntry',     # max: 1024
          Target => 'MyMapTarget',    # max: 1024
          Type   => 'FILE',           # values: FILE, DIRECTORY; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      HomeDirectoryType => 'PATH',        # OPTIONAL
      Policy            => 'MyPolicy',    # OPTIONAL
      PosixProfile      => {
        Gid           => 1,               # max: 4294967295
        Uid           => 1,               # max: 4294967295
        SecondaryGids => [
          1, ...                          # max: 4294967295
        ],    # max: 16; OPTIONAL
      },    # OPTIONAL
      SshPublicKeyBody => 'MySshPublicKeyBody',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ServerId = $CreateUserResponse->ServerId;
    my $UserName = $CreateUserResponse->UserName;

    # Returns a L<Paws::Transfer::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateUser>

=head1 ATTRIBUTES


=head2 HomeDirectory => Str

The landing directory (folder) for a user when they log in to the
server using the client.

A C<HomeDirectory> example is C</bucket_name/home/mydirectory>.

The C<HomeDirectory> parameter is only used if C<HomeDirectoryType> is
set to C<PATH>.



=head2 HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]

Logical directory mappings that specify what Amazon S3 or Amazon EFS
paths and keys should be visible to your user and how you want to make
them visible. You must specify the C<Entry> and C<Target> pair, where
C<Entry> shows how the path is made visible and C<Target> is the actual
Amazon S3 or Amazon EFS path. If you only specify a target, it is
displayed as is. You also must ensure that your Identity and Access
Management (IAM) role provides access to paths in C<Target>. This value
can be set only when C<HomeDirectoryType> is set to I<LOGICAL>.

The following is an C<Entry> and C<Target> pair example.

C<[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory"
} ]>

In most cases, you can use this value instead of the session policy to
lock your user down to the designated home directory ("C<chroot>"). To
do this, you can set C<Entry> to C</> and set C<Target> to the value
the user should see for their home directory when they log in.

The following is an C<Entry> and C<Target> pair example for C<chroot>.

C<[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]>



=head2 HomeDirectoryType => Str

The type of landing directory (folder) that you want your users' home
directory to be when they log in to the server. If you set it to
C<PATH>, the user will see the absolute Amazon S3 bucket or Amazon EFS
path as is in their file transfer protocol clients. If you set it to
C<LOGICAL>, you need to provide mappings in the
C<HomeDirectoryMappings> for how you want to make Amazon S3 or Amazon
EFS paths visible to your users.

If C<HomeDirectoryType> is C<LOGICAL>, you must provide mappings, using
the C<HomeDirectoryMappings> parameter. If, on the other hand,
C<HomeDirectoryType> is C<PATH>, you provide an absolute path using the
C<HomeDirectory> parameter. You cannot have both C<HomeDirectory> and
C<HomeDirectoryMappings> in your template.

Valid values are: C<"PATH">, C<"LOGICAL">

=head2 Policy => Str

A session policy for your user so that you can use the same Identity
and Access Management (IAM) role across multiple users. This policy
scopes down a user's access to portions of their Amazon S3 bucket.
Variables that you can use inside this policy include
C<${Transfer:UserName}>, C<${Transfer:HomeDirectory}>, and
C<${Transfer:HomeBucket}>.

This policy applies only when the domain of C<ServerId> is Amazon S3.
Amazon EFS does not use session policies.

For session policies, Transfer Family stores the policy as a JSON blob,
instead of the Amazon Resource Name (ARN) of the policy. You save the
policy as a JSON blob and pass it in the C<Policy> argument.

For an example of a session policy, see Example session policy
(https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html).

For more information, see AssumeRole
(https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html)
in the I<Amazon Web Services Security Token Service API Reference>.



=head2 PosixProfile => L<Paws::Transfer::PosixProfile>

Specifies the full POSIX identity, including user ID (C<Uid>), group ID
(C<Gid>), and any secondary groups IDs (C<SecondaryGids>), that
controls your users' access to your Amazon EFS file systems. The POSIX
permissions that are set on files and directories in Amazon EFS
determine the level of access your users get when transferring files
into and out of your Amazon EFS file systems.



=head2 B<REQUIRED> Role => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that controls your users' access to your Amazon S3 bucket or
Amazon EFS file system. The policies attached to this role determine
the level of access that you want to provide your users when
transferring files into and out of your Amazon S3 bucket or Amazon EFS
file system. The IAM role should also contain a trust relationship that
allows the server to access your resources when servicing your users'
transfer requests.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server instance. This is the
specific server that you added your user to.



=head2 SshPublicKeyBody => Str

The public portion of the Secure Shell (SSH) key used to authenticate
the user to the server.

The three standard SSH public key format elements are C<E<lt>key
typeE<gt>>, C<E<lt>body base64E<gt>>, and an optional
C<E<lt>commentE<gt>>, with spaces between each element.

Transfer Family accepts RSA, ECDSA, and ED25519 keys.

=over

=item *

For RSA keys, the key type is C<ssh-rsa>.

=item *

For ED25519 keys, the key type is C<ssh-ed25519>.

=item *

For ECDSA keys, the key type is either C<ecdsa-sha2-nistp256>,
C<ecdsa-sha2-nistp384>, or C<ecdsa-sha2-nistp521>, depending on the
size of the key you generated.

=back




=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for users. Tags
are metadata attached to users for any purpose.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user and is associated with a
C<ServerId>. This user name must be a minimum of 3 and a maximum of 100
characters long. The following are valid characters: a-z, A-Z, 0-9,
underscore '_', hyphen '-', period '.', and at sign '@'. The user name
can't start with a hyphen, period, or at sign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

