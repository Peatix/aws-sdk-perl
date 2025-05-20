
package Paws::ServiceCatalog::CreatePortfolioShare;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AccountId => (is => 'ro', isa => 'Str');
  has OrganizationNode => (is => 'ro', isa => 'Paws::ServiceCatalog::OrganizationNode');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has SharePrincipals => (is => 'ro', isa => 'Bool');
  has ShareTagOptions => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePortfolioShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreatePortfolioShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreatePortfolioShare - Arguments for method CreatePortfolioShare on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePortfolioShare on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreatePortfolioShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortfolioShare.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreatePortfolioShareOutput = $servicecatalog->CreatePortfolioShare(
      PortfolioId      => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',    # OPTIONAL
      AccountId        => 'MyAccountId',         # OPTIONAL
      OrganizationNode => {
        Type => 'ORGANIZATION'
        ,    # values: ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT; OPTIONAL
        Value => 'MyOrganizationNodeValue',    # OPTIONAL
      },    # OPTIONAL
      SharePrincipals => 1,    # OPTIONAL
      ShareTagOptions => 1,    # OPTIONAL
    );

    # Results:
    my $PortfolioShareToken = $CreatePortfolioShareOutput->PortfolioShareToken;

    # Returns a L<Paws::ServiceCatalog::CreatePortfolioShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreatePortfolioShare>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AccountId => Str

The Amazon Web Services account ID. For example, C<123456789012>.



=head2 OrganizationNode => L<Paws::ServiceCatalog::OrganizationNode>

The organization node to whom you are going to share. When you pass
C<OrganizationNode>, it creates C<PortfolioShare> for all of the Amazon
Web Services accounts that are associated to the C<OrganizationNode>.
The output returns a C<PortfolioShareToken>, which enables the
administrator to monitor the status of the C<PortfolioShare> creation
process.



=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.



=head2 SharePrincipals => Bool

This parameter is only supported for portfolios with an
B<OrganizationalNode> Type of C<ORGANIZATION> or
C<ORGANIZATIONAL_UNIT>.

Enables or disables C<Principal> sharing when creating the portfolio
share. If you do B<not> provide this flag, principal sharing is
disabled.

When you enable Principal Name Sharing for a portfolio share, the share
recipient account end users with a principal that matches any of the
associated IAM patterns can provision products from the portfolio. Once
shared, the share recipient can view associations of C<PrincipalType>:
C<IAM_PATTERN> on their portfolio. You can create the principals in the
recipient account before or after creating the share.



=head2 ShareTagOptions => Bool

Enables or disables C<TagOptions > sharing when creating the portfolio
share. If this flag is not provided, TagOptions sharing is disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortfolioShare in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

