
package Paws::OSIS::ValidatePipeline;
  use Moose;
  has PipelineConfigurationBody => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/validatePipeline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::ValidatePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ValidatePipeline - Arguments for method ValidatePipeline on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidatePipeline on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method ValidatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidatePipeline.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $ValidatePipelineResponse = $osis->ValidatePipeline(
      PipelineConfigurationBody => 'MyPipelineConfigurationBody',

    );

    # Results:
    my $Errors  = $ValidatePipelineResponse->Errors;
    my $IsValid = $ValidatePipelineResponse->IsValid;

    # Returns a L<Paws::OSIS::ValidatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/ValidatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineConfigurationBody => Str

The pipeline configuration in YAML format. The command accepts the
pipeline configuration as a string or within a .yaml file. If you
provide the configuration as a string, each new line must be escaped
with C<\n>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidatePipeline in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

