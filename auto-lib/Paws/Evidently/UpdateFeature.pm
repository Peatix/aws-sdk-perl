
package Paws::Evidently::UpdateFeature;
  use Moose;
  has AddOrUpdateVariations => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::VariationConfig]', traits => ['NameInRequest'], request_name => 'addOrUpdateVariations');
  has DefaultVariation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVariation');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EntityOverrides => (is => 'ro', isa => 'Paws::Evidently::EntityOverrideMap', traits => ['NameInRequest'], request_name => 'entityOverrides');
  has EvaluationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evaluationStrategy');
  has Feature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'feature', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has RemoveVariations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'removeVariations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFeature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/features/{feature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::UpdateFeatureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateFeature - Arguments for method UpdateFeature on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFeature on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method UpdateFeature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFeature.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $UpdateFeatureResponse = $evidently->UpdateFeature(
      Feature               => 'MyFeatureName',
      Project               => 'MyProjectRef',
      AddOrUpdateVariations => [
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
      ],    # OPTIONAL
      DefaultVariation => 'MyVariationName',    # OPTIONAL
      Description      => 'MyDescription',      # OPTIONAL
      EntityOverrides  => {
        'MyEntityId' =>
          'MyVariationName',    # key: min: 1, max: 512, value: min: 1, max: 127
      },    # OPTIONAL
      EvaluationStrategy => 'ALL_RULES',    # OPTIONAL
      RemoveVariations   => [
        'MyVariationName', ...              # min: 1, max: 127
      ],    # OPTIONAL
    );

    # Results:
    my $Feature = $UpdateFeatureResponse->Feature;

    # Returns a L<Paws::Evidently::UpdateFeatureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/UpdateFeature>

=head1 ATTRIBUTES


=head2 AddOrUpdateVariations => ArrayRef[L<Paws::Evidently::VariationConfig>]

To update variation configurations for this feature, or add new ones,
specify this structure. In this array, include any variations that you
want to add or update. If the array includes a variation name that
already exists for this feature, it is updated. If it includes a new
variation name, it is added as a new variation.



=head2 DefaultVariation => Str

The name of the variation to use as the default variation. The default
variation is served to users who are not allocated to any ongoing
launches or experiments of this feature.



=head2 Description => Str

An optional description of the feature.



=head2 EntityOverrides => L<Paws::Evidently::EntityOverrideMap>

Specified users that should always be served a specific variation of a
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

=head2 B<REQUIRED> Feature => Str

The name of the feature to be updated.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the feature to be updated.



=head2 RemoveVariations => ArrayRef[Str|Undef]

Removes a variation from the feature. If the variation you specify
doesn't exist, then this makes no change and does not report an error.

This operation fails if you try to remove a variation that is part of
an ongoing launch or experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFeature in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

