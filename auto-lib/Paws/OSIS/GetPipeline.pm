
package Paws::OSIS::GetPipeline;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PipelineName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/getPipeline/{PipelineName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::GetPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::GetPipeline - Arguments for method GetPipeline on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPipeline on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method GetPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPipeline.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $GetPipelineResponse = $osis->GetPipeline(
      PipelineName => 'MyPipelineName',

    );

    # Results:
    my $Pipeline = $GetPipelineResponse->Pipeline;

    # Returns a L<Paws::OSIS::GetPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/GetPipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPipeline in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

