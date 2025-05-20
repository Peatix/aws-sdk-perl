
package Paws::B2bi::TestMapping;
  use Moose;
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat' , required => 1);
  has InputFileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileContent' , required => 1);
  has MappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingTemplate' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::TestMappingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::TestMapping - Arguments for method TestMapping on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestMapping on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method TestMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestMapping.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $TestMappingResponse = $b2bi->TestMapping(
      FileFormat       => 'XML',
      InputFileContent => 'MyTestMappingInputFileContent',
      MappingTemplate  => 'MyMappingTemplate',

    );

    # Results:
    my $MappedFileContent = $TestMappingResponse->MappedFileContent;

    # Returns a L<Paws::B2bi::TestMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/TestMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileFormat => Str

Specifies that the currently supported file formats for EDI
transformations are C<JSON> and C<XML>.

Valid values are: C<"XML">, C<"JSON">, C<"NOT_USED">

=head2 B<REQUIRED> InputFileContent => Str

Specify the contents of the EDI (electronic data interchange) XML or
JSON file that is used as input for the transform.



=head2 B<REQUIRED> MappingTemplate => Str

Specifies the mapping template for the transformer. This template is
used to map the parsed EDI file using JSONata or XSLT.

This parameter is available for backwards compatibility. Use the
Mapping
(https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html)
data type instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestMapping in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

