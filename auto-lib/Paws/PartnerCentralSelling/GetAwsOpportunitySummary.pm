
package Paws::PartnerCentralSelling::GetAwsOpportunitySummary;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has RelatedOpportunityIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAwsOpportunitySummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetAwsOpportunitySummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetAwsOpportunitySummary - Arguments for method GetAwsOpportunitySummary on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAwsOpportunitySummary on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetAwsOpportunitySummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAwsOpportunitySummary.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetAwsOpportunitySummaryResponse =
      $partnercentral -selling->GetAwsOpportunitySummary(
      Catalog                      => 'MyCatalogIdentifier',
      RelatedOpportunityIdentifier => 'MyOpportunityIdentifier',

      );

    # Results:
    my $Catalog         = $GetAwsOpportunitySummaryResponse->Catalog;
    my $Customer        = $GetAwsOpportunitySummaryResponse->Customer;
    my $Insights        = $GetAwsOpportunitySummaryResponse->Insights;
    my $InvolvementType = $GetAwsOpportunitySummaryResponse->InvolvementType;
    my $InvolvementTypeChangeReason =
      $GetAwsOpportunitySummaryResponse->InvolvementTypeChangeReason;
    my $LifeCycle        = $GetAwsOpportunitySummaryResponse->LifeCycle;
    my $OpportunityTeam  = $GetAwsOpportunitySummaryResponse->OpportunityTeam;
    my $Origin           = $GetAwsOpportunitySummaryResponse->Origin;
    my $Project          = $GetAwsOpportunitySummaryResponse->Project;
    my $RelatedEntityIds = $GetAwsOpportunitySummaryResponse->RelatedEntityIds;
    my $RelatedOpportunityId =
      $GetAwsOpportunitySummaryResponse->RelatedOpportunityId;
    my $Visibility = $GetAwsOpportunitySummaryResponse->Visibility;

# Returns a L<Paws::PartnerCentralSelling::GetAwsOpportunitySummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetAwsOpportunitySummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the AWS Opportunity is located. Accepted
values include C<AWS> for production opportunities or C<Sandbox> for
testing purposes. The catalog determines which environment the
opportunity data is pulled from.



=head2 B<REQUIRED> RelatedOpportunityIdentifier => Str

The unique identifier for the related partner opportunity. Use this
field to correlate an AWS opportunity with its corresponding partner
opportunity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAwsOpportunitySummary in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

