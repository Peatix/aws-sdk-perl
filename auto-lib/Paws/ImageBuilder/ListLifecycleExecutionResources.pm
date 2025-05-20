
package Paws::ImageBuilder::ListLifecycleExecutionResources;
  use Moose;
  has LifecycleExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleExecutionId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ParentResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentResourceId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLifecycleExecutionResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListLifecycleExecutionResources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListLifecycleExecutionResources - Arguments for method ListLifecycleExecutionResources on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLifecycleExecutionResources on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListLifecycleExecutionResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLifecycleExecutionResources.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListLifecycleExecutionResourcesResponse =
      $imagebuilder->ListLifecycleExecutionResources(
      LifecycleExecutionId => 'MyLifecycleExecutionId',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyPaginationToken',        # OPTIONAL
      ParentResourceId     => 'MyNonEmptyString',         # OPTIONAL
      );

    # Results:
    my $LifecycleExecutionId =
      $ListLifecycleExecutionResourcesResponse->LifecycleExecutionId;
    my $LifecycleExecutionState =
      $ListLifecycleExecutionResourcesResponse->LifecycleExecutionState;
    my $NextToken = $ListLifecycleExecutionResourcesResponse->NextToken;
    my $Resources = $ListLifecycleExecutionResourcesResponse->Resources;

# Returns a L<Paws::ImageBuilder::ListLifecycleExecutionResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListLifecycleExecutionResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifecycleExecutionId => Str

Use the unique identifier for a runtime instance of the lifecycle
policy to get runtime details.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.



=head2 ParentResourceId => Str

You can leave this empty to get a list of Image Builder resources that
were identified for lifecycle actions.

To get a list of associated resources that are impacted for an
individual resource (the parent), specify its Amazon Resource Name
(ARN). Associated resources are produced from your image and
distributed when you run a build, such as AMIs or container images
stored in ECR repositories.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLifecycleExecutionResources in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

