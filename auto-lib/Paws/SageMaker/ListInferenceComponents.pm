
package Paws::SageMaker::ListInferenceComponents;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has EndpointNameEquals => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');
  has VariantNameEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceComponents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListInferenceComponentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceComponents - Arguments for method ListInferenceComponents on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceComponents on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListInferenceComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceComponents.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListInferenceComponentsOutput =
      $api . sagemaker->ListInferenceComponents(
      CreationTimeAfter      => '1970-01-01T01:00:00',                # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',                # OPTIONAL
      EndpointNameEquals     => 'MyEndpointName',                     # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',                # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',                # OPTIONAL
      MaxResults             => 1,                                    # OPTIONAL
      NameContains           => 'MyInferenceComponentNameContains',   # OPTIONAL
      NextToken              => 'MyPaginationToken',                  # OPTIONAL
      SortBy                 => 'Name',                               # OPTIONAL
      SortOrder              => 'Ascending',                          # OPTIONAL
      StatusEquals           => 'InService',                          # OPTIONAL
      VariantNameEquals      => 'MyVariantName',                      # OPTIONAL
      );

    # Results:
    my $InferenceComponents =
      $ListInferenceComponentsOutput->InferenceComponents;
    my $NextToken = $ListInferenceComponentsOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListInferenceComponentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListInferenceComponents>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Filters the results to only those inference components that were
created after the specified time.



=head2 CreationTimeBefore => Str

Filters the results to only those inference components that were
created before the specified time.



=head2 EndpointNameEquals => Str

An endpoint name to filter the listed inference components. The
response includes only those inference components that are hosted at
the specified endpoint.



=head2 LastModifiedTimeAfter => Str

Filters the results to only those inference components that were
updated after the specified time.



=head2 LastModifiedTimeBefore => Str

Filters the results to only those inference components that were
updated before the specified time.



=head2 MaxResults => Int

The maximum number of inference components to return in the response.
This value defaults to 10.



=head2 NameContains => Str

Filters the results to only those inference components with a name that
contains the specified string.



=head2 NextToken => Str

A token that you use to get the next set of results following a
truncated response. If the response to the previous request was
truncated, that response provides the value for this token.



=head2 SortBy => Str

The field by which to sort the inference components in the response.
The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for results. The default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Filters the results to only those inference components with the
specified status.

Valid values are: C<"InService">, C<"Creating">, C<"Updating">, C<"Failed">, C<"Deleting">

=head2 VariantNameEquals => Str

A production variant name to filter the listed inference components.
The response includes only those inference components that are hosted
at the specified variant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceComponents in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

