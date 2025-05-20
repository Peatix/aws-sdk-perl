
package Paws::ServiceCatalog::AssociatePrincipalWithPortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalARN => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociatePrincipalWithPortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::AssociatePrincipalWithPortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::AssociatePrincipalWithPortfolio - Arguments for method AssociatePrincipalWithPortfolio on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePrincipalWithPortfolio on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method AssociatePrincipalWithPortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePrincipalWithPortfolio.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $AssociatePrincipalWithPortfolioOutput =
      $servicecatalog->AssociatePrincipalWithPortfolio(
      PortfolioId    => 'MyId',
      PrincipalARN   => 'MyPrincipalARN',
      PrincipalType  => 'IAM',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/AssociatePrincipalWithPortfolio>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.



=head2 B<REQUIRED> PrincipalARN => Str

The ARN of the principal (user, role, or group). If the
C<PrincipalType> is C<IAM>, the supported value is a fully defined IAM
Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).
If the C<PrincipalType> is C<IAM_PATTERN>, the supported value is an
C<IAM> ARN I<without an AccountID> in the following format:

I<arn:partition:iam:::resource-type/resource-id>

The ARN resource-id can be either:

=over

=item *

A fully formed resource-id. For example,
I<arn:aws:iam:::role/resource-name> or
I<arn:aws:iam:::role/resource-path/resource-name>

=item *

A wildcard ARN. The wildcard ARN accepts C<IAM_PATTERN> values with a
"*" or "?" in the resource-id segment of the ARN. For example
I<arn:partition:service:::resource-type/resource-path/resource-name>.
The new symbols are exclusive to the B<resource-path> and
B<resource-name> and cannot replace the B<resource-type> or other ARN
values.

The ARN path and principal name allow unlimited wildcard characters.

=back

Examples of an B<acceptable> wildcard ARN:

=over

=item *

arn:aws:iam:::role/ResourceName_*

=item *

arn:aws:iam:::role/*/ResourceName_?

=back

Examples of an B<unacceptable> wildcard ARN:

=over

=item *

arn:aws:iam:::*/ResourceName

=back

You can associate multiple C<IAM_PATTERN>s even if the account has no
principal with that name.

The "?" wildcard character matches zero or one of any character. This
is similar to ".?" in regular regex context. The "*" wildcard character
matches any number of any characters. This is similar to ".*" in
regular regex context.

In the IAM Principal ARN format
(I<arn:partition:iam:::resource-type/resource-path/resource-name>),
valid resource-type values include B<user/>, B<group/>, or B<role/>.
The "?" and "*" characters are allowed only after the resource-type in
the resource-id segment. You can use special characters anywhere within
the resource-id.

The "*" character also matches the "/" character, allowing paths to be
formed I<within> the resource-id. For example,
I<arn:aws:iam:::role/B<*>/ResourceName_?> matches both
I<arn:aws:iam:::role/pathA/pathB/ResourceName_1> and
I<arn:aws:iam:::role/pathA/ResourceName_1>.



=head2 B<REQUIRED> PrincipalType => Str

The principal type. The supported value is C<IAM> if you use a fully
defined Amazon Resource Name (ARN), or C<IAM_PATTERN> if you use an ARN
with no C<accountID>, with or without wildcard characters.

Valid values are: C<"IAM">, C<"IAM_PATTERN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePrincipalWithPortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

