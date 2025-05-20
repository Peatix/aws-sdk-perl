
package Paws::LakeFormation::ExtendTransaction;
  use Moose;
  has TransactionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExtendTransaction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ExtendTransaction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ExtendTransactionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ExtendTransaction - Arguments for method ExtendTransaction on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExtendTransaction on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ExtendTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExtendTransaction.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ExtendTransactionResponse = $lakeformation->ExtendTransaction(
      TransactionId => 'MyTransactionIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ExtendTransaction>

=head1 ATTRIBUTES


=head2 TransactionId => Str

The transaction to extend.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExtendTransaction in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

