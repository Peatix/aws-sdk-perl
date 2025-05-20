
package Paws::PartnerCentralSelling::GetOpportunity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetOpportunityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetOpportunity - Arguments for method GetOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetOpportunityResponse = $partnercentral -selling->GetOpportunity(
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyOpportunityIdentifier',

    );

    # Results:
    my $Arn              = $GetOpportunityResponse->Arn;
    my $Catalog          = $GetOpportunityResponse->Catalog;
    my $CreatedDate      = $GetOpportunityResponse->CreatedDate;
    my $Customer         = $GetOpportunityResponse->Customer;
    my $Id               = $GetOpportunityResponse->Id;
    my $LastModifiedDate = $GetOpportunityResponse->LastModifiedDate;
    my $LifeCycle        = $GetOpportunityResponse->LifeCycle;
    my $Marketing        = $GetOpportunityResponse->Marketing;
    my $NationalSecurity = $GetOpportunityResponse->NationalSecurity;
    my $OpportunityTeam  = $GetOpportunityResponse->OpportunityTeam;
    my $OpportunityType  = $GetOpportunityResponse->OpportunityType;
    my $PartnerOpportunityIdentifier =
      $GetOpportunityResponse->PartnerOpportunityIdentifier;
    my $PrimaryNeedsFromAws = $GetOpportunityResponse->PrimaryNeedsFromAws;
    my $Project             = $GetOpportunityResponse->Project;
    my $RelatedEntityIdentifiers =
      $GetOpportunityResponse->RelatedEntityIdentifiers;
    my $SoftwareRevenue = $GetOpportunityResponse->SoftwareRevenue;

    # Returns a L<Paws::PartnerCentralSelling::GetOpportunityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity is fetched from. Use
C<AWS> to retrieve opportunities in the Amazon Web Services catalog,
and C<Sandbox> to retrieve opportunities in a secure, isolated testing
environment.



=head2 B<REQUIRED> Identifier => Str

Read-only, system generated C<Opportunity> unique identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

