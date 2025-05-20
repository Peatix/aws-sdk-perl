
package Paws::OSIS::ListPipelineBlueprints;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelineBlueprints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/listPipelineBlueprints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::ListPipelineBlueprintsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ListPipelineBlueprints - Arguments for method ListPipelineBlueprints on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelineBlueprints on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method ListPipelineBlueprints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelineBlueprints.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $ListPipelineBlueprintsResponse = $osis->ListPipelineBlueprints();

    # Results:
    my $Blueprints = $ListPipelineBlueprintsResponse->Blueprints;

    # Returns a L<Paws::OSIS::ListPipelineBlueprintsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/ListPipelineBlueprints>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelineBlueprints in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

