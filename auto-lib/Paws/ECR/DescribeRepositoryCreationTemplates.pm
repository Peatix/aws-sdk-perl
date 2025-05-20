
package Paws::ECR::DescribeRepositoryCreationTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Prefixes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'prefixes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRepositoryCreationTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribeRepositoryCreationTemplatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRepositoryCreationTemplates - Arguments for method DescribeRepositoryCreationTemplates on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRepositoryCreationTemplates on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribeRepositoryCreationTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRepositoryCreationTemplates.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DescribeRepositoryCreationTemplatesResponse =
      $api . ecr->DescribeRepositoryCreationTemplates(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Prefixes   => [
        'MyPrefix', ...               # min: 1, max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken  = $DescribeRepositoryCreationTemplatesResponse->NextToken;
    my $RegistryId = $DescribeRepositoryCreationTemplatesResponse->RegistryId;
    my $RepositoryCreationTemplates =
      $DescribeRepositoryCreationTemplatesResponse->RepositoryCreationTemplates;

   # Returns a L<Paws::ECR::DescribeRepositoryCreationTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DescribeRepositoryCreationTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repository results returned by
C<DescribeRepositoryCreationTemplatesRequest> in paginated output. When
this parameter is used, C<DescribeRepositoryCreationTemplatesRequest>
only returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another
C<DescribeRepositoryCreationTemplatesRequest> request with the returned
C<nextToken> value. This value can be between 1 and 1000. If this
parameter is not used, then
C<DescribeRepositoryCreationTemplatesRequest> returns up to 100 results
and a C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeRepositoryCreationTemplates> request where C<maxResults> was
used and the results exceeded the value of that parameter. Pagination
continues from the end of the previous results that returned the
C<nextToken> value. This value is C<null> when there are no more
results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Prefixes => ArrayRef[Str|Undef]

The repository namespace prefixes associated with the repository
creation templates to describe. If this value is not specified, all
repository creation templates are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRepositoryCreationTemplates in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

