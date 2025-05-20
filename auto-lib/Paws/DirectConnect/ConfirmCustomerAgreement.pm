
package Paws::DirectConnect::ConfirmCustomerAgreement;
  use Moose;
  has AgreementName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmCustomerAgreement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::ConfirmCustomerAgreementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmCustomerAgreement - Arguments for method ConfirmCustomerAgreement on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmCustomerAgreement on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method ConfirmCustomerAgreement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmCustomerAgreement.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $ConfirmCustomerAgreementResponse =
      $directconnect->ConfirmCustomerAgreement(
      AgreementName => 'MyAgreementName',    # OPTIONAL
      );

    # Results:
    my $Status = $ConfirmCustomerAgreementResponse->Status;

    # Returns a L<Paws::DirectConnect::ConfirmCustomerAgreementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/ConfirmCustomerAgreement>

=head1 ATTRIBUTES


=head2 AgreementName => Str

The name of the customer agreement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmCustomerAgreement in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

