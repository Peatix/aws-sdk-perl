
package Paws::Glue::GetCatalogs;
  use Moose;
  has IncludeRoot => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentCatalogId => (is => 'ro', isa => 'Str');
  has Recursive => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCatalogs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetCatalogsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalogs - Arguments for method GetCatalogs on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCatalogs on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetCatalogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCatalogs.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetCatalogsResponse = $glue->GetCatalogs(
      IncludeRoot     => 1,                      # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyToken',              # OPTIONAL
      ParentCatalogId => 'MyCatalogIdString',    # OPTIONAL
      Recursive       => 1,                      # OPTIONAL
    );

    # Results:
    my $CatalogList = $GetCatalogsResponse->CatalogList;
    my $NextToken   = $GetCatalogsResponse->NextToken;

    # Returns a L<Paws::Glue::GetCatalogsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetCatalogs>

=head1 ATTRIBUTES


=head2 IncludeRoot => Bool

Whether to list the default catalog in the account and region in the
response. Defaults to C<false>. When C<true> and C<ParentCatalogId =
NULL | Amazon Web Services Account ID>, all catalogs and the default
catalog are enumerated in the response.

When the C<ParentCatalogId> is not equal to null, and this attribute is
passed as C<false> or C<true>, an C<InvalidInputException> is thrown.



=head2 MaxResults => Int

The maximum number of catalogs to return in one response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 ParentCatalogId => Str

The ID of the parent catalog in which the catalog resides. If none is
provided, the Amazon Web Services Account Number is used by default.



=head2 Recursive => Bool

Whether to list all catalogs across the catalog hierarchy, starting
from the C<ParentCatalogId>. Defaults to C<false> . When C<true>, all
catalog objects in the C<ParentCatalogID> hierarchy are enumerated in
the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCatalogs in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

