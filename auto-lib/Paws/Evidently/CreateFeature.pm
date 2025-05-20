
package Paws::Evidently::CreateFeature;
  use Moose;
  has DefaultVariation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVariation');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntityOverrides => (is => 'ro', isa => 'Paws::Evidently::EntityOverrideMap', traits => ['NameInRequest'], request_name => 'entityOverrides');
  has EvaluationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationStrategy');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Variations => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::VariationConfig]', traits => ['NameInRequest'], request_name => 'variations', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFeature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/features');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::CreateFeatureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateFeature - Arguments for method CreateFeature on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFeature on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method CreateFeature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFeature.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $CreateFeatureResponse = $evidently->CreateFeature(
      Name       => 'MyFeatureName',
      Project    => 'MyProjectRef',
      Variations => [
        {
          Name  => 'MyVariationName',    # min: 1, max: 127
          Value => {
            BoolValue   => 1,            # OPTIONAL
            DoubleValue => 1,            # OPTIONAL
            LongValue   =>
              1,    # min: -9007199254740991, max: 9007199254740991; OPTIONAL
            StringValue =>
              'MyVariableValueStringValueString',    # max: 512; OPTIONAL
          },

        },
        ...
      ],
      DefaultVariation => 'MyVariationName',    # OPTIONAL
      Description      => 'MyDescription',      # OPTIONAL
      EntityOverrides  => {
        'MyEntityId' =>
          'MyVariationName',    # key: min: 1, max: 512, value: min: 1, max: 127
      },    # OPTIONAL
      EvaluationStrategy => 'ALL_RULES',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Feature = $CreateFeatureResponse->Feature;

    # Returns a L<Paws::Evidently::CreateFeatureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/CreateFeature>

=head1 ATTRIBUTES


=head2 DefaultVariation => Str

The name of the variation to use as the default variation. The default
variation is served to users who are not allocated to any ongoing
launches or experiments of this feature.

This variation must also be listed in the C<variations> structure.

If you omit C<defaultVariation>, the first variation listed in the
C<variations> structure is used as the default variation.



=head2 Description => Str

An optional description of the feature.



=head2 EntityOverrides => L<Paws::Evidently::EntityOverrideMap>

Specify users that should always be served a specific variation of a
feature. Each user is specified by a key-value pair . For each key,
specify a user by entering their user ID, account ID, or some other
identifier. For the value, specify the name of the variation that they
are to be served.

This parameter is limited to 2500 overrides or a total of 40KB. The
40KB limit includes an overhead of 6 bytes per override.



=head2 EvaluationStrategy => Str

Specify C<ALL_RULES> to activate the traffic allocation specified by
any ongoing launches or experiments. Specify C<DEFAULT_VARIATION> to
serve the default variation to all users instead.

Valid values are: C<"ALL_RULES">, C<"DEFAULT_VARIATION">

=head2 B<REQUIRED> Name => Str

The name for the new feature.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that is to contain the new feature.



=head2 Tags => L<Paws::Evidently::TagMap>

Assigns one or more tags (key-value pairs) to the feature.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can associate as many as 50 tags with a feature.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 B<REQUIRED> Variations => ArrayRef[L<Paws::Evidently::VariationConfig>]

An array of structures that contain the configuration of the feature's
different variations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFeature in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

