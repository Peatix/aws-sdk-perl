
package Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccount;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptDomainTransferFromAnotherAwsAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccount - Arguments for method AcceptDomainTransferFromAnotherAwsAccount on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptDomainTransferFromAnotherAwsAccount on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method AcceptDomainTransferFromAnotherAwsAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptDomainTransferFromAnotherAwsAccount.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $AcceptDomainTransferFromAnotherAwsAccountResponse =
      $route53domains->AcceptDomainTransferFromAnotherAwsAccount(
      DomainName => 'MyDomainName',
      Password   => 'MyPassword',

      );

    # Results:
    my $OperationId =
      $AcceptDomainTransferFromAnotherAwsAccountResponse->OperationId;

# Returns a L<Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/AcceptDomainTransferFromAnotherAwsAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain that was specified when another Amazon Web
Services account submitted a TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html)
request.



=head2 B<REQUIRED> Password => Str

The password that was returned by the TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html)
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptDomainTransferFromAnotherAwsAccount in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

