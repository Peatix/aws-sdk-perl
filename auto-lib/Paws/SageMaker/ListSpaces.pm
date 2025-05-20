
package Paws::SageMaker::ListSpaces;
  use Moose;
  has DomainIdEquals => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has SpaceNameContains => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSpaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListSpacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListSpaces - Arguments for method ListSpaces on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSpaces on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListSpaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSpaces.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListSpacesResponse = $api . sagemaker->ListSpaces(
      DomainIdEquals    => 'MyDomainId',      # OPTIONAL
      MaxResults        => 1,                 # OPTIONAL
      NextToken         => 'MyNextToken',     # OPTIONAL
      SortBy            => 'CreationTime',    # OPTIONAL
      SortOrder         => 'Ascending',       # OPTIONAL
      SpaceNameContains => 'MySpaceName',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSpacesResponse->NextToken;
    my $Spaces    = $ListSpacesResponse->Spaces;

    # Returns a L<Paws::SageMaker::ListSpacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListSpaces>

=head1 ATTRIBUTES


=head2 DomainIdEquals => Str

A parameter to search for the domain ID.



=head2 MaxResults => Int

This parameter defines the maximum number of results that can be return
in a single response. The C<MaxResults> parameter is an upper bound,
not a target. If there are more results available than the value
specified, a C<NextToken> is provided in the response. The C<NextToken>
indicates that the user should get the next set of results by providing
this token as a part of a subsequent call. The default value for
C<MaxResults> is 10.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
C<CreationTime>.

Valid values are: C<"CreationTime">, C<"LastModifiedTime">

=head2 SortOrder => Str

The sort order for the results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 SpaceNameContains => Str

A parameter by which to filter the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSpaces in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

