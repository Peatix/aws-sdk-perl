
package Paws::PaymentCryptography::ListKeys;
  use Moose;
  has KeyState => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::ListKeysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ListKeys - Arguments for method ListKeys on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKeys on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method ListKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKeys.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $ListKeysOutput = $controlplane . payment-cryptography->ListKeys(
      KeyState   => 'CREATE_IN_PROGRESS',    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $Keys      = $ListKeysOutput->Keys;
    my $NextToken = $ListKeysOutput->NextToken;

    # Returns a L<Paws::PaymentCryptography::ListKeysOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/ListKeys>

=head1 ATTRIBUTES


=head2 KeyState => Str

The key state of the keys you want to list.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"DELETE_PENDING">, C<"DELETE_COMPLETE">

=head2 MaxResults => Int

Use this parameter to specify the maximum number of items to return.
When this value is present, Amazon Web Services Payment Cryptography
does not return more than the specified number of items, but it might
return fewer.

This value is optional. If you include a value, it must be between 1
and 100, inclusive. If you do not include a value, it defaults to 50.



=head2 NextToken => Str

Use this parameter in a subsequent request after you receive a response
with truncated results. Set it to the value of C<NextToken> from the
truncated response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKeys in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

