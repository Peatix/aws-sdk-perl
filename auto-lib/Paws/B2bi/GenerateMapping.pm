
package Paws::B2bi::GenerateMapping;
  use Moose;
  has InputFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileContent' , required => 1);
  has MappingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingType' , required => 1);
  has OutputFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputFileContent' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::GenerateMappingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GenerateMapping - Arguments for method GenerateMapping on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateMapping on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method GenerateMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateMapping.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $GenerateMappingResponse = $b2bi->GenerateMapping(
      InputFileContent  => 'MyGenerateMappingInputFileContent',
      MappingType       => 'JSONATA',
      OutputFileContent => 'MyGenerateMappingOutputFileContent',

    );

    # Results:
    my $MappingAccuracy = $GenerateMappingResponse->MappingAccuracy;
    my $MappingTemplate = $GenerateMappingResponse->MappingTemplate;

    # Returns a L<Paws::B2bi::GenerateMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/GenerateMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputFileContent => Str

Provide the contents of a sample X12 EDI file (for inbound EDI) or
JSON/XML file (for outbound EDI) to use as a starting point for the
mapping.



=head2 B<REQUIRED> MappingType => Str

Specify the mapping type: either C<JSONATA> or C<XSLT.>

Valid values are: C<"JSONATA">, C<"XSLT">

=head2 B<REQUIRED> OutputFileContent => Str

Provide the contents of a sample X12 EDI file (for outbound EDI) or
JSON/XML file (for inbound EDI) to use as a target for the mapping.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateMapping in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

