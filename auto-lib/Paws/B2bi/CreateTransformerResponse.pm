
package Paws::B2bi::CreateTransformerResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' , required => 1);
  has EdiType => (is => 'ro', isa => 'Paws::B2bi::EdiType', traits => ['NameInRequest'], request_name => 'ediType' );
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat' );
  has InputConversion => (is => 'ro', isa => 'Paws::B2bi::InputConversion', traits => ['NameInRequest'], request_name => 'inputConversion' );
  has Mapping => (is => 'ro', isa => 'Paws::B2bi::Mapping', traits => ['NameInRequest'], request_name => 'mapping' );
  has MappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingTemplate' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OutputConversion => (is => 'ro', isa => 'Paws::B2bi::OutputConversion', traits => ['NameInRequest'], request_name => 'outputConversion' );
  has SampleDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleDocument' );
  has SampleDocuments => (is => 'ro', isa => 'Paws::B2bi::SampleDocuments', traits => ['NameInRequest'], request_name => 'sampleDocuments' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);
  has TransformerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerArn' , required => 1);
  has TransformerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreateTransformerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

Returns a timestamp for creation date and time of the transformer.


=head2 EdiType => L<Paws::B2bi::EdiType>

Returns the details for the EDI standard that is being used for the
transformer. Currently, only X12 is supported. X12 is a set of
standards and corresponding messages that define specific business
documents.


=head2 FileFormat => Str

Returns that the currently supported file formats for EDI
transformations are C<JSON> and C<XML>.

Valid values are: C<"XML">, C<"JSON">, C<"NOT_USED">
=head2 InputConversion => L<Paws::B2bi::InputConversion>

Returns the C<InputConversion> object, which contains the format
options for the inbound transformation.


=head2 Mapping => L<Paws::B2bi::Mapping>

Returns the structure that contains the mapping template and its
language (either XSLT or JSONATA).


=head2 MappingTemplate => Str

Returns the mapping template for the transformer. This template is used
to map the parsed EDI file using JSONata or XSLT.


=head2 B<REQUIRED> Name => Str

Returns the name of the transformer, used to identify it.


=head2 OutputConversion => L<Paws::B2bi::OutputConversion>

Returns the C<OutputConversion> object, which contains the format
options for the outbound transformation.


=head2 SampleDocument => Str

Returns a sample EDI document that is used by a transformer as a guide
for processing the EDI data.


=head2 SampleDocuments => L<Paws::B2bi::SampleDocuments>

Returns a structure that contains the Amazon S3 bucket and an array of
the corresponding keys used to identify the location for your sample
documents.


=head2 B<REQUIRED> Status => Str

Returns the state of the newly created transformer. The transformer can
be either C<active> or C<inactive>. For the transformer to be used in a
capability, its status must C<active>.

Valid values are: C<"active">, C<"inactive">
=head2 B<REQUIRED> TransformerArn => Str

Returns an Amazon Resource Name (ARN) for a specific Amazon Web
Services resource, such as a capability, partnership, profile, or
transformer.


=head2 B<REQUIRED> TransformerId => Str

Returns the system-assigned unique identifier for the transformer.


=head2 _request_id => Str


=cut

1;