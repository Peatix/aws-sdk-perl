
package Paws::MarketplaceAgreement::GetAgreementTerms;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgreementTerms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceAgreement::GetAgreementTermsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::GetAgreementTerms - Arguments for method GetAgreementTerms on L<Paws::MarketplaceAgreement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgreementTerms on the
L<AWS Marketplace Agreement Service|Paws::MarketplaceAgreement> service. Use the attributes of this class
as arguments to method GetAgreementTerms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgreementTerms.

=head1 SYNOPSIS

    my $agreement-marketplace = Paws->service('MarketplaceAgreement');
    my $GetAgreementTermsOutput = $agreement -marketplace->GetAgreementTerms(
      AgreementId => 'MyResourceId',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AcceptedTerms = $GetAgreementTermsOutput->AcceptedTerms;
    my $NextToken     = $GetAgreementTermsOutput->NextToken;

    # Returns a L<Paws::MarketplaceAgreement::GetAgreementTermsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/agreement-marketplace/GetAgreementTerms>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

The unique identifier of the agreement.



=head2 MaxResults => Int

The maximum number of agreements to return in the response.



=head2 NextToken => Str

A token to specify where to start pagination




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgreementTerms in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

