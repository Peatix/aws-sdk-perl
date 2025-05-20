
package Paws::PartnerCentralSelling::SubmitOpportunity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has InvolvementType => (is => 'ro', isa => 'Str', required => 1);
  has Visibility => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::SubmitOpportunity - Arguments for method SubmitOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method SubmitOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->SubmitOpportunity(
      Catalog         => 'MyCatalogIdentifier',
      Identifier      => 'MyOpportunityIdentifier',
      InvolvementType => 'For Visibility Only',
      Visibility      => 'Full',                      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/SubmitOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request. Valid values are:

=over

=item *

AWS: Submits the opportunity request from the production AWS
environment.

=item *

Sandbox: Submits the opportunity request from a sandbox environment
used for testing or development purposes.

=back




=head2 B<REQUIRED> Identifier => Str

The identifier of the Opportunity previously created by partner and
needs to be submitted.



=head2 B<REQUIRED> InvolvementType => Str

Specifies the level of AWS sellers' involvement on the opportunity.
Valid values:

=over

=item *

C<Co-sell>: Indicates the user wants to co-sell with AWS. Share the
opportunity with AWS to receive deal assistance and support.

=item *

C<For Visibility Only>: Indicates that the user does not need support
from AWS Sales Rep. Share this opportunity with AWS for visibility
only, you will not receive deal assistance and support.

=back


Valid values are: C<"For Visibility Only">, C<"Co-Sell">

=head2 Visibility => Str

Determines whether to restrict visibility of the opportunity from AWS
sales. Default value is Full. Valid values:

=over

=item *

C<Full>: The opportunity is fully visible to AWS sales.

=item *

C<Limited>: The opportunity has restricted visibility to AWS sales.

=back


Valid values are: C<"Full">, C<"Limited">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

