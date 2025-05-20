
package Paws::Bedrock::ListPromptRouters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPromptRouters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompt-routers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListPromptRoutersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListPromptRouters - Arguments for method ListPromptRouters on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPromptRouters on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListPromptRouters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPromptRouters.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListPromptRoutersResponse = $bedrock->ListPromptRouters(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Type       => 'custom',               # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPromptRoutersResponse->NextToken;
    my $PromptRouterSummaries =
      $ListPromptRoutersResponse->PromptRouterSummaries;

    # Returns a L<Paws::Bedrock::ListPromptRoutersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListPromptRouters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of prompt routers to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 Type => Str

The type of the prompt routers, such as whether it's default or custom.

Valid values are: C<"custom">, C<"default">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPromptRouters in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

