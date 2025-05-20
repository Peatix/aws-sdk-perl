
package Paws::Comprehend::ListDatasets;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Comprehend::DatasetFilter');
  has FlywheelArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ListDatasetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDatasets - Arguments for method ListDatasets on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListDatasetsResponse = $comprehend->ListDatasets(
      Filter => {
        CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
        DatasetType        => 'TRAIN',    # values: TRAIN, TEST; OPTIONAL
        Status => 'CREATING',    # values: CREATING, COMPLETED, FAILED; OPTIONAL
      },    # OPTIONAL
      FlywheelArn => 'MyComprehendFlywheelArn',    # OPTIONAL
      MaxResults  => 1,                            # OPTIONAL
      NextToken   => 'MyString',                   # OPTIONAL
    );

    # Results:
    my $DatasetPropertiesList = $ListDatasetsResponse->DatasetPropertiesList;
    my $NextToken             = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::Comprehend::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListDatasets>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Comprehend::DatasetFilter>

Filters the datasets to be returned in the response.



=head2 FlywheelArn => Str

The Amazon Resource Number (ARN) of the flywheel.



=head2 MaxResults => Int

Maximum number of results to return in a response. The default is 100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

