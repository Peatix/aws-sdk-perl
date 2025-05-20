
package Paws::MarketplaceAgreement::DescribeAgreement;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgreement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceAgreement::DescribeAgreementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::DescribeAgreement - Arguments for method DescribeAgreement on L<Paws::MarketplaceAgreement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgreement on the
L<AWS Marketplace Agreement Service|Paws::MarketplaceAgreement> service. Use the attributes of this class
as arguments to method DescribeAgreement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgreement.

=head1 SYNOPSIS

    my $agreement-marketplace = Paws->service('MarketplaceAgreement');
    my $DescribeAgreementOutput = $agreement -marketplace->DescribeAgreement(
      AgreementId => 'MyResourceId',

    );

    # Results:
    my $AcceptanceTime   = $DescribeAgreementOutput->AcceptanceTime;
    my $Acceptor         = $DescribeAgreementOutput->Acceptor;
    my $AgreementId      = $DescribeAgreementOutput->AgreementId;
    my $AgreementType    = $DescribeAgreementOutput->AgreementType;
    my $EndTime          = $DescribeAgreementOutput->EndTime;
    my $EstimatedCharges = $DescribeAgreementOutput->EstimatedCharges;
    my $ProposalSummary  = $DescribeAgreementOutput->ProposalSummary;
    my $Proposer         = $DescribeAgreementOutput->Proposer;
    my $StartTime        = $DescribeAgreementOutput->StartTime;
    my $Status           = $DescribeAgreementOutput->Status;

    # Returns a L<Paws::MarketplaceAgreement::DescribeAgreementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/agreement-marketplace/DescribeAgreement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

The unique identifier of the agreement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgreement in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

