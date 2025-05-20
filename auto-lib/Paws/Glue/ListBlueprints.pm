
package Paws::Glue::ListBlueprints;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBlueprints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListBlueprintsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListBlueprints - Arguments for method ListBlueprints on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBlueprints on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListBlueprints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBlueprints.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListBlueprintsResponse = $glue->ListBlueprints(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Blueprints = $ListBlueprintsResponse->Blueprints;
    my $NextToken  = $ListBlueprintsResponse->NextToken;

    # Returns a L<Paws::Glue::ListBlueprintsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListBlueprints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of a list to return.



=head2 NextToken => Str

A continuation token, if this is a continuation request.



=head2 Tags => L<Paws::Glue::TagsMap>

Filters the list by an Amazon Web Services resource tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBlueprints in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

