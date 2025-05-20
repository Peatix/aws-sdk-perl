
package Paws::B2bi::CreateTransformer;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has EdiType => (is => 'ro', isa => 'Paws::B2bi::EdiType', traits => ['NameInRequest'], request_name => 'ediType' );
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat' );
  has InputConversion => (is => 'ro', isa => 'Paws::B2bi::InputConversion', traits => ['NameInRequest'], request_name => 'inputConversion' );
  has Mapping => (is => 'ro', isa => 'Paws::B2bi::Mapping', traits => ['NameInRequest'], request_name => 'mapping' );
  has MappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mappingTemplate' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OutputConversion => (is => 'ro', isa => 'Paws::B2bi::OutputConversion', traits => ['NameInRequest'], request_name => 'outputConversion' );
  has SampleDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleDocument' );
  has SampleDocuments => (is => 'ro', isa => 'Paws::B2bi::SampleDocuments', traits => ['NameInRequest'], request_name => 'sampleDocuments' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransformer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::CreateTransformerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreateTransformer - Arguments for method CreateTransformer on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransformer on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method CreateTransformer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransformer.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $CreateTransformerResponse = $b2bi->CreateTransformer(
      Name        => 'MyTransformerName',
      ClientToken => 'MyString',            # OPTIONAL
      EdiType     => {
        X12Details => {
          TransactionSet => 'X12_100'
          , # values: X12_100, X12_101, X12_102, X12_103, X12_104, X12_105, X12_106, X12_107, X12_108, X12_109, X12_110, X12_111, X12_112, X12_113, X12_120, X12_121, X12_124, X12_125, X12_126, X12_127, X12_128, X12_129, X12_130, X12_131, X12_132, X12_133, X12_135, X12_138, X12_139, X12_140, X12_141, X12_142, X12_143, X12_144, X12_146, X12_147, X12_148, X12_149, X12_150, X12_151, X12_152, X12_153, X12_154, X12_155, X12_157, X12_158, X12_159, X12_160, X12_161, X12_163, X12_170, X12_175, X12_176, X12_179, X12_180, X12_185, X12_186, X12_187, X12_188, X12_189, X12_190, X12_191, X12_194, X12_195, X12_196, X12_197, X12_198, X12_199, X12_200, X12_201, X12_202, X12_203, X12_204, X12_205, X12_206, X12_210, X12_211, X12_212, X12_213, X12_214, X12_215, X12_216, X12_217, X12_218, X12_219, X12_220, X12_222, X12_223, X12_224, X12_225, X12_227, X12_228, X12_240, X12_242, X12_244, X12_245, X12_248, X12_249, X12_250, X12_251, X12_252, X12_255, X12_256, X12_259, X12_260, X12_261, X12_262, X12_263, X12_264, X12_265, X12_266, X12_267, X12_268, X12_269, X12_270, X12_271, X12_272, X12_273, X12_274, X12_275, X12_276, X12_277, X12_278, X12_280, X12_283, X12_284, X12_285, X12_286, X12_288, X12_290, X12_300, X12_301, X12_303, X12_304, X12_309, X12_310, X12_311, X12_312, X12_313, X12_315, X12_317, X12_319, X12_322, X12_323, X12_324, X12_325, X12_326, X12_350, X12_352, X12_353, X12_354, X12_355, X12_356, X12_357, X12_358, X12_361, X12_362, X12_404, X12_410, X12_412, X12_414, X12_417, X12_418, X12_419, X12_420, X12_421, X12_422, X12_423, X12_424, X12_425, X12_426, X12_429, X12_431, X12_432, X12_433, X12_434, X12_435, X12_436, X12_437, X12_440, X12_451, X12_452, X12_453, X12_455, X12_456, X12_460, X12_463, X12_466, X12_468, X12_470, X12_475, X12_485, X12_486, X12_490, X12_492, X12_494, X12_500, X12_501, X12_503, X12_504, X12_511, X12_517, X12_521, X12_527, X12_536, X12_540, X12_561, X12_567, X12_568, X12_601, X12_602, X12_620, X12_625, X12_650, X12_715, X12_753, X12_754, X12_805, X12_806, X12_810, X12_811, X12_812, X12_813, X12_814, X12_815, X12_816, X12_818, X12_819, X12_820, X12_821, X12_822, X12_823, X12_824, X12_826, X12_827, X12_828, X12_829, X12_830, X12_831, X12_832, X12_833, X12_834, X12_835, X12_836, X12_837, X12_838, X12_839, X12_840, X12_841, X12_842, X12_843, X12_844, X12_845, X12_846, X12_847, X12_848, X12_849, X12_850, X12_851, X12_852, X12_853, X12_854, X12_855, X12_856, X12_857, X12_858, X12_859, X12_860, X12_861, X12_862, X12_863, X12_864, X12_865, X12_866, X12_867, X12_868, X12_869, X12_870, X12_871, X12_872, X12_873, X12_874, X12_875, X12_876, X12_877, X12_878, X12_879, X12_880, X12_881, X12_882, X12_883, X12_884, X12_885, X12_886, X12_887, X12_888, X12_889, X12_891, X12_893, X12_894, X12_895, X12_896, X12_920, X12_924, X12_925, X12_926, X12_928, X12_940, X12_943, X12_944, X12_945, X12_947, X12_980, X12_990, X12_993, X12_996, X12_997, X12_998, X12_999, X12_270_X279, X12_271_X279, X12_275_X210, X12_275_X211, X12_276_X212, X12_277_X212, X12_277_X214, X12_277_X364, X12_278_X217, X12_820_X218, X12_820_X306, X12_824_X186, X12_834_X220, X12_834_X307, X12_834_X318, X12_835_X221, X12_837_X222, X12_837_X223, X12_837_X224, X12_837_X291, X12_837_X292, X12_837_X298, X12_999_X231; OPTIONAL
          Version => 'VERSION_4010'
          , # values: VERSION_4010, VERSION_4030, VERSION_4050, VERSION_4060, VERSION_5010, VERSION_5010_HIPAA; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      FileFormat      => 'XML',    # OPTIONAL
      InputConversion => {
        FromFormat    => 'X12',    # values: X12
        FormatOptions => {
          X12 => {
            TransactionSet => 'X12_100'
            , # values: X12_100, X12_101, X12_102, X12_103, X12_104, X12_105, X12_106, X12_107, X12_108, X12_109, X12_110, X12_111, X12_112, X12_113, X12_120, X12_121, X12_124, X12_125, X12_126, X12_127, X12_128, X12_129, X12_130, X12_131, X12_132, X12_133, X12_135, X12_138, X12_139, X12_140, X12_141, X12_142, X12_143, X12_144, X12_146, X12_147, X12_148, X12_149, X12_150, X12_151, X12_152, X12_153, X12_154, X12_155, X12_157, X12_158, X12_159, X12_160, X12_161, X12_163, X12_170, X12_175, X12_176, X12_179, X12_180, X12_185, X12_186, X12_187, X12_188, X12_189, X12_190, X12_191, X12_194, X12_195, X12_196, X12_197, X12_198, X12_199, X12_200, X12_201, X12_202, X12_203, X12_204, X12_205, X12_206, X12_210, X12_211, X12_212, X12_213, X12_214, X12_215, X12_216, X12_217, X12_218, X12_219, X12_220, X12_222, X12_223, X12_224, X12_225, X12_227, X12_228, X12_240, X12_242, X12_244, X12_245, X12_248, X12_249, X12_250, X12_251, X12_252, X12_255, X12_256, X12_259, X12_260, X12_261, X12_262, X12_263, X12_264, X12_265, X12_266, X12_267, X12_268, X12_269, X12_270, X12_271, X12_272, X12_273, X12_274, X12_275, X12_276, X12_277, X12_278, X12_280, X12_283, X12_284, X12_285, X12_286, X12_288, X12_290, X12_300, X12_301, X12_303, X12_304, X12_309, X12_310, X12_311, X12_312, X12_313, X12_315, X12_317, X12_319, X12_322, X12_323, X12_324, X12_325, X12_326, X12_350, X12_352, X12_353, X12_354, X12_355, X12_356, X12_357, X12_358, X12_361, X12_362, X12_404, X12_410, X12_412, X12_414, X12_417, X12_418, X12_419, X12_420, X12_421, X12_422, X12_423, X12_424, X12_425, X12_426, X12_429, X12_431, X12_432, X12_433, X12_434, X12_435, X12_436, X12_437, X12_440, X12_451, X12_452, X12_453, X12_455, X12_456, X12_460, X12_463, X12_466, X12_468, X12_470, X12_475, X12_485, X12_486, X12_490, X12_492, X12_494, X12_500, X12_501, X12_503, X12_504, X12_511, X12_517, X12_521, X12_527, X12_536, X12_540, X12_561, X12_567, X12_568, X12_601, X12_602, X12_620, X12_625, X12_650, X12_715, X12_753, X12_754, X12_805, X12_806, X12_810, X12_811, X12_812, X12_813, X12_814, X12_815, X12_816, X12_818, X12_819, X12_820, X12_821, X12_822, X12_823, X12_824, X12_826, X12_827, X12_828, X12_829, X12_830, X12_831, X12_832, X12_833, X12_834, X12_835, X12_836, X12_837, X12_838, X12_839, X12_840, X12_841, X12_842, X12_843, X12_844, X12_845, X12_846, X12_847, X12_848, X12_849, X12_850, X12_851, X12_852, X12_853, X12_854, X12_855, X12_856, X12_857, X12_858, X12_859, X12_860, X12_861, X12_862, X12_863, X12_864, X12_865, X12_866, X12_867, X12_868, X12_869, X12_870, X12_871, X12_872, X12_873, X12_874, X12_875, X12_876, X12_877, X12_878, X12_879, X12_880, X12_881, X12_882, X12_883, X12_884, X12_885, X12_886, X12_887, X12_888, X12_889, X12_891, X12_893, X12_894, X12_895, X12_896, X12_920, X12_924, X12_925, X12_926, X12_928, X12_940, X12_943, X12_944, X12_945, X12_947, X12_980, X12_990, X12_993, X12_996, X12_997, X12_998, X12_999, X12_270_X279, X12_271_X279, X12_275_X210, X12_275_X211, X12_276_X212, X12_277_X212, X12_277_X214, X12_277_X364, X12_278_X217, X12_820_X218, X12_820_X306, X12_824_X186, X12_834_X220, X12_834_X307, X12_834_X318, X12_835_X221, X12_837_X222, X12_837_X223, X12_837_X224, X12_837_X291, X12_837_X292, X12_837_X298, X12_999_X231; OPTIONAL
            Version => 'VERSION_4010'
            , # values: VERSION_4010, VERSION_4030, VERSION_4050, VERSION_4060, VERSION_5010, VERSION_5010_HIPAA; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Mapping => {
        TemplateLanguage => 'XSLT',                 # values: XSLT, JSONATA
        Template         => 'MyMappingTemplate',    # max: 350000; OPTIONAL
      },    # OPTIONAL
      MappingTemplate  => 'MyMappingTemplate',    # OPTIONAL
      OutputConversion => {
        ToFormat      => 'X12',                   # values: X12
        FormatOptions => {
          X12 => {
            TransactionSet => 'X12_100'
            , # values: X12_100, X12_101, X12_102, X12_103, X12_104, X12_105, X12_106, X12_107, X12_108, X12_109, X12_110, X12_111, X12_112, X12_113, X12_120, X12_121, X12_124, X12_125, X12_126, X12_127, X12_128, X12_129, X12_130, X12_131, X12_132, X12_133, X12_135, X12_138, X12_139, X12_140, X12_141, X12_142, X12_143, X12_144, X12_146, X12_147, X12_148, X12_149, X12_150, X12_151, X12_152, X12_153, X12_154, X12_155, X12_157, X12_158, X12_159, X12_160, X12_161, X12_163, X12_170, X12_175, X12_176, X12_179, X12_180, X12_185, X12_186, X12_187, X12_188, X12_189, X12_190, X12_191, X12_194, X12_195, X12_196, X12_197, X12_198, X12_199, X12_200, X12_201, X12_202, X12_203, X12_204, X12_205, X12_206, X12_210, X12_211, X12_212, X12_213, X12_214, X12_215, X12_216, X12_217, X12_218, X12_219, X12_220, X12_222, X12_223, X12_224, X12_225, X12_227, X12_228, X12_240, X12_242, X12_244, X12_245, X12_248, X12_249, X12_250, X12_251, X12_252, X12_255, X12_256, X12_259, X12_260, X12_261, X12_262, X12_263, X12_264, X12_265, X12_266, X12_267, X12_268, X12_269, X12_270, X12_271, X12_272, X12_273, X12_274, X12_275, X12_276, X12_277, X12_278, X12_280, X12_283, X12_284, X12_285, X12_286, X12_288, X12_290, X12_300, X12_301, X12_303, X12_304, X12_309, X12_310, X12_311, X12_312, X12_313, X12_315, X12_317, X12_319, X12_322, X12_323, X12_324, X12_325, X12_326, X12_350, X12_352, X12_353, X12_354, X12_355, X12_356, X12_357, X12_358, X12_361, X12_362, X12_404, X12_410, X12_412, X12_414, X12_417, X12_418, X12_419, X12_420, X12_421, X12_422, X12_423, X12_424, X12_425, X12_426, X12_429, X12_431, X12_432, X12_433, X12_434, X12_435, X12_436, X12_437, X12_440, X12_451, X12_452, X12_453, X12_455, X12_456, X12_460, X12_463, X12_466, X12_468, X12_470, X12_475, X12_485, X12_486, X12_490, X12_492, X12_494, X12_500, X12_501, X12_503, X12_504, X12_511, X12_517, X12_521, X12_527, X12_536, X12_540, X12_561, X12_567, X12_568, X12_601, X12_602, X12_620, X12_625, X12_650, X12_715, X12_753, X12_754, X12_805, X12_806, X12_810, X12_811, X12_812, X12_813, X12_814, X12_815, X12_816, X12_818, X12_819, X12_820, X12_821, X12_822, X12_823, X12_824, X12_826, X12_827, X12_828, X12_829, X12_830, X12_831, X12_832, X12_833, X12_834, X12_835, X12_836, X12_837, X12_838, X12_839, X12_840, X12_841, X12_842, X12_843, X12_844, X12_845, X12_846, X12_847, X12_848, X12_849, X12_850, X12_851, X12_852, X12_853, X12_854, X12_855, X12_856, X12_857, X12_858, X12_859, X12_860, X12_861, X12_862, X12_863, X12_864, X12_865, X12_866, X12_867, X12_868, X12_869, X12_870, X12_871, X12_872, X12_873, X12_874, X12_875, X12_876, X12_877, X12_878, X12_879, X12_880, X12_881, X12_882, X12_883, X12_884, X12_885, X12_886, X12_887, X12_888, X12_889, X12_891, X12_893, X12_894, X12_895, X12_896, X12_920, X12_924, X12_925, X12_926, X12_928, X12_940, X12_943, X12_944, X12_945, X12_947, X12_980, X12_990, X12_993, X12_996, X12_997, X12_998, X12_999, X12_270_X279, X12_271_X279, X12_275_X210, X12_275_X211, X12_276_X212, X12_277_X212, X12_277_X214, X12_277_X364, X12_278_X217, X12_820_X218, X12_820_X306, X12_824_X186, X12_834_X220, X12_834_X307, X12_834_X318, X12_835_X221, X12_837_X222, X12_837_X223, X12_837_X224, X12_837_X291, X12_837_X292, X12_837_X298, X12_999_X231; OPTIONAL
            Version => 'VERSION_4010'
            , # values: VERSION_4010, VERSION_4030, VERSION_4050, VERSION_4060, VERSION_5010, VERSION_5010_HIPAA; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SampleDocument  => 'MyFileLocation',    # OPTIONAL
      SampleDocuments => {
        BucketName => 'MyBucketName',         # min: 3, max: 63
        Keys       => [
          {
            Input  => 'MyS3Key',    # max: 1024; OPTIONAL
            Output => 'MyS3Key',    # max: 1024; OPTIONAL
          },
          ...
        ],

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt        = $CreateTransformerResponse->CreatedAt;
    my $EdiType          = $CreateTransformerResponse->EdiType;
    my $FileFormat       = $CreateTransformerResponse->FileFormat;
    my $InputConversion  = $CreateTransformerResponse->InputConversion;
    my $Mapping          = $CreateTransformerResponse->Mapping;
    my $MappingTemplate  = $CreateTransformerResponse->MappingTemplate;
    my $Name             = $CreateTransformerResponse->Name;
    my $OutputConversion = $CreateTransformerResponse->OutputConversion;
    my $SampleDocument   = $CreateTransformerResponse->SampleDocument;
    my $SampleDocuments  = $CreateTransformerResponse->SampleDocuments;
    my $Status           = $CreateTransformerResponse->Status;
    my $TransformerArn   = $CreateTransformerResponse->TransformerArn;
    my $TransformerId    = $CreateTransformerResponse->TransformerId;

    # Returns a L<Paws::B2bi::CreateTransformerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/CreateTransformer>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Reserved for future use.



=head2 EdiType => L<Paws::B2bi::EdiType>

Specifies the details for the EDI standard that is being used for the
transformer. Currently, only X12 is supported. X12 is a set of
standards and corresponding messages that define specific business
documents.



=head2 FileFormat => Str

Specifies that the currently supported file formats for EDI
transformations are C<JSON> and C<XML>.

Valid values are: C<"XML">, C<"JSON">, C<"NOT_USED">

=head2 InputConversion => L<Paws::B2bi::InputConversion>

Specify the C<InputConversion> object, which contains the format
options for the inbound transformation.



=head2 Mapping => L<Paws::B2bi::Mapping>

Specify the structure that contains the mapping template and its
language (either XSLT or JSONATA).



=head2 MappingTemplate => Str

Specifies the mapping template for the transformer. This template is
used to map the parsed EDI file using JSONata or XSLT.

This parameter is available for backwards compatibility. Use the
Mapping
(https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html)
data type instead.



=head2 B<REQUIRED> Name => Str

Specifies the name of the transformer, used to identify it.



=head2 OutputConversion => L<Paws::B2bi::OutputConversion>

A structure that contains the C<OutputConversion> object, which
contains the format options for the outbound transformation.



=head2 SampleDocument => Str

Specifies a sample EDI document that is used by a transformer as a
guide for processing the EDI data.



=head2 SampleDocuments => L<Paws::B2bi::SampleDocuments>

Specify a structure that contains the Amazon S3 bucket and an array of
the corresponding keys used to identify the location for your sample
documents.



=head2 Tags => ArrayRef[L<Paws::B2bi::Tag>]

Specifies the key-value pairs assigned to ARNs that you can use to
group and search for resources by type. You can attach this metadata to
resources (capabilities, partnerships, and so on) for any purpose.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransformer in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

