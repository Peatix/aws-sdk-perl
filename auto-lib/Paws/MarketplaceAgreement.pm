package Paws::MarketplaceAgreement;
  use Moose;
  sub service { 'agreement-marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2020-03-01' }
  sub target_prefix { 'AWSMPCommerceService_v20200301' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeAgreement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceAgreement::DescribeAgreement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAgreementTerms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceAgreement::GetAgreementTerms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAgreements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceAgreement::SearchAgreements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeAgreement GetAgreementTerms SearchAgreements / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement - Perl Interface to AWS AWS Marketplace Agreement Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceAgreement');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Marketplace is a curated digital catalog that customers can use to
find, buy, deploy, and manage third-party software, data, and services
to build solutions and run their businesses. The AWS Marketplace
Agreement Service provides an API interface that helps AWS Marketplace
sellers manage their product-related agreements, including listing,
searching, and filtering agreements.

To manage agreements in AWS Marketplace, you must ensure that your AWS
Identity and Access Management (IAM) policies and roles are set up. The
user must have the required policies/permissions that allow them to
carry out the actions in AWS:

=over

=item *

C<DescribeAgreement> E<ndash> Grants permission to users to obtain
detailed meta data about any of their agreements.

=item *

C<GetAgreementTerms> E<ndash> Grants permission to users to obtain
details about the terms of an agreement.

=item *

C<SearchAgreements> E<ndash> Grants permission to users to search
through all their agreements.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/agreement-marketplace-2020-03-01>


=head1 METHODS

=head2 DescribeAgreement

=over

=item AgreementId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceAgreement::DescribeAgreement>

Returns: a L<Paws::MarketplaceAgreement::DescribeAgreementOutput> instance

Provides details about an agreement, such as the proposer, acceptor,
start date, and end date.


=head2 GetAgreementTerms

=over

=item AgreementId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceAgreement::GetAgreementTerms>

Returns: a L<Paws::MarketplaceAgreement::GetAgreementTermsOutput> instance

Obtains details about the terms in an agreement that you participated
in as proposer or acceptor.

The details include:

=over

=item *

C<TermType> E<ndash> The type of term, such as C<LegalTerm>,
C<RenewalTerm>, or C<ConfigurableUpfrontPricingTerm>.

=item *

C<TermID> E<ndash> The ID of the particular term, which is common
between offer and agreement.

=item *

C<TermPayload> E<ndash> The key information contained in the term, such
as the EULA for C<LegalTerm> or pricing and dimensions for various
pricing terms, such as C<ConfigurableUpfrontPricingTerm> or
C<UsageBasedPricingTerm>.

=back

=over

=item *

C<Configuration> E<ndash> The buyer/acceptor's selection at the time of
agreement creation, such as the number of units purchased for a
dimension or setting the C<EnableAutoRenew> flag.

=back



=head2 SearchAgreements

=over

=item [Catalog => Str]

=item [Filters => ArrayRef[L<Paws::MarketplaceAgreement::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::MarketplaceAgreement::Sort>]


=back

Each argument is described in detail in: L<Paws::MarketplaceAgreement::SearchAgreements>

Returns: a L<Paws::MarketplaceAgreement::SearchAgreementsOutput> instance

Searches across all agreements that a proposer or an acceptor has in
AWS Marketplace. The search returns a list of agreements with basic
agreement information.

The following filter combinations are supported:

=over

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<ResourceIdentifier>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<OfferId>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<ResourceIdentifier>
+ C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<OfferId> + C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<ResourceType> +
C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<ResourceType> + C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<OfferId>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<OfferId> + C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<ResourceIdentifier>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<ResourceIdentifier> + C<Status>

=item *

C<PartyType> as C<Proposer> + C<AgreementType> + C<AcceptorAccountId> +
C<ResourceType>

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

