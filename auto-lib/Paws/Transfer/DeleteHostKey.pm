
package Paws::Transfer::DeleteHostKey;
  use Moose;
  has HostKeyId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHostKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DeleteHostKey - Arguments for method DeleteHostKey on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHostKey on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DeleteHostKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHostKey.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    $transfer->DeleteHostKey(
      HostKeyId => 'MyHostKeyId',
      ServerId  => 'MyServerId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DeleteHostKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostKeyId => Str

The identifier of the host key that you are deleting.



=head2 B<REQUIRED> ServerId => Str

The identifier of the server that contains the host key that you are
deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHostKey in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

