
package Paws::Omics::ListShares;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::Filter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListShares');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/shares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListSharesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListShares - Arguments for method ListShares on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListShares on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListShares.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListSharesResponse = $omics->ListShares(
      ResourceOwner => 'SELF',
      Filter        => {
        ResourceArns => [ 'MyString', ... ],    # min: 1, max: 10; OPTIONAL
        Status       => [
          'PENDING',
          ...   # values: PENDING, ACTIVATING, ACTIVE, DELETING, DELETED, FAILED
        ],    # min: 1, max: 10; OPTIONAL
        Type => [
          'VARIANT_STORE',
          ...    # values: VARIANT_STORE, ANNOTATION_STORE, WORKFLOW
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSharesResponse->NextToken;
    my $Shares    = $ListSharesResponse->Shares;

    # Returns a L<Paws::Omics::ListSharesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListShares>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::Filter>

Attributes that you use to filter for a specific subset of resource
shares.



=head2 MaxResults => Int

The maximum number of shares to return in one page of results.



=head2 NextToken => Str

Next token returned in the response of a previous
ListReadSetUploadPartsRequest call. Used to get the next page of
results.



=head2 B<REQUIRED> ResourceOwner => Str

The account that owns the resource shares.

Valid values are: C<"SELF">, C<"OTHER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListShares in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

