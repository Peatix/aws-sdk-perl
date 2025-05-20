
package Paws::PaymentCryptography::CreateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', required => 1);
  has KeyArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::CreateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::CreateAlias - Arguments for method CreateAlias on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $CreateAliasOutput = $controlplane . payment-cryptography->CreateAlias(
      AliasName => 'MyAliasName',
      KeyArn    => 'MyKeyArn',      # OPTIONAL
    );

    # Results:
    my $Alias = $CreateAliasOutput->Alias;

    # Returns a L<Paws::PaymentCryptography::CreateAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/CreateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

A friendly name that you can use to refer to a key. An alias must begin
with C<alias/> followed by a name, for example C<alias/ExampleAlias>.
It can contain only alphanumeric characters, forward slashes (/),
underscores (_), and dashes (-).

Don't include personal, confidential or sensitive information in this
field. This field may be displayed in plaintext in CloudTrail logs and
other output.



=head2 KeyArn => Str

The C<KeyARN> of the key to associate with the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

