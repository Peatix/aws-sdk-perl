
package Paws::PaymentCryptography::UpdateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', required => 1);
  has KeyArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::UpdateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::UpdateAlias - Arguments for method UpdateAlias on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAlias on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method UpdateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAlias.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $UpdateAliasOutput = $controlplane . payment-cryptography->UpdateAlias(
      AliasName => 'MyAliasName',
      KeyArn    => 'MyKeyArn',      # OPTIONAL
    );

    # Results:
    my $Alias = $UpdateAliasOutput->Alias;

    # Returns a L<Paws::PaymentCryptography::UpdateAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/UpdateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The alias whose associated key is changing.



=head2 KeyArn => Str

The C<KeyARN> for the key that you are updating or removing from the
alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAlias in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

