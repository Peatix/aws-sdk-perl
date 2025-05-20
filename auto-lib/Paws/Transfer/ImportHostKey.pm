
package Paws::Transfer::ImportHostKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has HostKeyBody => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportHostKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ImportHostKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportHostKey - Arguments for method ImportHostKey on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportHostKey on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ImportHostKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportHostKey.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ImportHostKeyResponse = $transfer->ImportHostKey(
      HostKeyBody => 'MyHostKey',
      ServerId    => 'MyServerId',
      Description => 'MyHostKeyDescription',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $HostKeyId = $ImportHostKeyResponse->HostKeyId;
    my $ServerId  = $ImportHostKeyResponse->ServerId;

    # Returns a L<Paws::Transfer::ImportHostKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ImportHostKey>

=head1 ATTRIBUTES


=head2 Description => Str

The text description that identifies this host key.



=head2 B<REQUIRED> HostKeyBody => Str

The private key portion of an SSH key pair.

Transfer Family accepts RSA, ECDSA, and ED25519 keys.



=head2 B<REQUIRED> ServerId => Str

The identifier of the server that contains the host key that you are
importing.



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for host keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportHostKey in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

