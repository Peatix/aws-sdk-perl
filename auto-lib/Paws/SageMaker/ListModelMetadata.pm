
package Paws::SageMaker::ListModelMetadata;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchExpression => (is => 'ro', isa => 'Paws::SageMaker::ModelMetadataSearchExpression');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelMetadata - Arguments for method ListModelMetadata on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelMetadata on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModelMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelMetadata.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelMetadataResponse = $api . sagemaker->ListModelMetadata(
      MaxResults       => 1,                # OPTIONAL
      NextToken        => 'MyNextToken',    # OPTIONAL
      SearchExpression => {
        Filters => [
          {
            Name =>
              'Domain',    # values: Domain, Framework, Task, FrameworkVersion
            Value => 'MyString256',    # max: 256

          },
          ...
        ],    # min: 1, max: 4; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ModelMetadataSummaries =
      $ListModelMetadataResponse->ModelMetadataSummaries;
    my $NextToken = $ListModelMetadataResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListModelMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModelMetadata>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of models to return in the response.



=head2 NextToken => Str

If the response to a previous C<ListModelMetadataResponse> request was
truncated, the response includes a NextToken. To retrieve the next set
of model metadata, use the token in the next request.



=head2 SearchExpression => L<Paws::SageMaker::ModelMetadataSearchExpression>

One or more filters that searches for the specified resource or
resources in a search. All resource objects that satisfy the
expression's condition are included in the search results. Specify the
Framework, FrameworkVersion, Domain or Task to filter supported. Filter
names and values are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelMetadata in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

