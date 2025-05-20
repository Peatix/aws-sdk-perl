
package Paws::Transfer::UpdateHostKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has HostKeyId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHostKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateHostKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateHostKey - Arguments for method UpdateHostKey on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHostKey on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateHostKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHostKey.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateHostKeyResponse = $transfer->UpdateHostKey(
      Description => 'MyHostKeyDescription',
      HostKeyId   => 'MyHostKeyId',
      ServerId    => 'MyServerId',

    );

    # Results:
    my $HostKeyId = $UpdateHostKeyResponse->HostKeyId;
    my $ServerId  = $UpdateHostKeyResponse->ServerId;

    # Returns a L<Paws::Transfer::UpdateHostKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateHostKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

An updated description for the host key.



=head2 B<REQUIRED> HostKeyId => Str

The identifier of the host key that you are updating.



=head2 B<REQUIRED> ServerId => Str

The identifier of the server that contains the host key that you are
updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHostKey in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

