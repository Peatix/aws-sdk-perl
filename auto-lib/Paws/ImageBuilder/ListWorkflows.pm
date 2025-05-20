
package Paws::ImageBuilder::ListWorkflows;
  use Moose;
  has ByName => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'byName');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListWorkflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListWorkflowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWorkflows - Arguments for method ListWorkflows on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflows on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflows.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListWorkflowsResponse = $imagebuilder->ListWorkflows(
      ByName  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Owner      => 'Self',                 # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListWorkflowsResponse->NextToken;
    my $WorkflowVersionList = $ListWorkflowsResponse->WorkflowVersionList;

    # Returns a L<Paws::ImageBuilder::ListWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListWorkflows>

=head1 ATTRIBUTES


=head2 ByName => Bool

Specify all or part of the workflow name to streamline results.



=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]

Used to streamline search results.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.



=head2 Owner => Str

Used to get a list of workflow build version filtered by the identity
of the creator.

Valid values are: C<"Self">, C<"Shared">, C<"Amazon">, C<"ThirdParty">, C<"AWSMarketplace">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflows in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

