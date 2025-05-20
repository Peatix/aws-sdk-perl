
package Paws::LakeFormation::StartTransaction;
  use Moose;
  has TransactionType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTransaction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartTransaction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::StartTransactionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::StartTransaction - Arguments for method StartTransaction on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTransaction on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method StartTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTransaction.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $StartTransactionResponse = $lakeformation->StartTransaction(
      TransactionType => 'READ_AND_WRITE',    # OPTIONAL
    );

    # Results:
    my $TransactionId = $StartTransactionResponse->TransactionId;

    # Returns a L<Paws::LakeFormation::StartTransactionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/StartTransaction>

=head1 ATTRIBUTES


=head2 TransactionType => Str

Indicates whether this transaction should be read only or read and
write. Writes made using a read-only transaction ID will be rejected.
Read-only transactions do not need to be committed.

Valid values are: C<"READ_AND_WRITE">, C<"READ_ONLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTransaction in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

