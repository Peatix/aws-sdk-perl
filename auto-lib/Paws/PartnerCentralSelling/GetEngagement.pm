
package Paws::PartnerCentralSelling::GetEngagement;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetEngagementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetEngagement - Arguments for method GetEngagement on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEngagement on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEngagement.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetEngagementResponse = $partnercentral -selling->GetEngagement(
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyEngagementArnOrIdentifier',

    );

    # Results:
    my $Arn         = $GetEngagementResponse->Arn;
    my $Contexts    = $GetEngagementResponse->Contexts;
    my $CreatedAt   = $GetEngagementResponse->CreatedAt;
    my $CreatedBy   = $GetEngagementResponse->CreatedBy;
    my $Description = $GetEngagementResponse->Description;
    my $Id          = $GetEngagementResponse->Id;
    my $MemberCount = $GetEngagementResponse->MemberCount;
    my $Title       = $GetEngagementResponse->Title;

    # Returns a L<Paws::PartnerCentralSelling::GetEngagementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the engagement request. Valid values
are C<AWS> and C<Sandbox>.



=head2 B<REQUIRED> Identifier => Str

Specifies the identifier of the Engagement record to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEngagement in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

