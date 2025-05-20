
package Paws::Glue::ListCustomEntityTypes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomEntityTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListCustomEntityTypesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListCustomEntityTypes - Arguments for method ListCustomEntityTypes on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomEntityTypes on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListCustomEntityTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomEntityTypes.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListCustomEntityTypesResponse = $glue->ListCustomEntityTypes(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CustomEntityTypes = $ListCustomEntityTypesResponse->CustomEntityTypes;
    my $NextToken         = $ListCustomEntityTypesResponse->NextToken;

    # Returns a L<Paws::Glue::ListCustomEntityTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListCustomEntityTypes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A paginated token to offset the results.



=head2 Tags => L<Paws::Glue::TagsMap>

A list of key-value pair tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomEntityTypes in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

