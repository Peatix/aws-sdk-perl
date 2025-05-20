
package Paws::SageMaker::UpdateFeatureMetadata;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterAdditions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureParameter]');
  has ParameterRemovals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFeatureMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateFeatureMetadata - Arguments for method UpdateFeatureMetadata on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFeatureMetadata on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateFeatureMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFeatureMetadata.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->UpdateFeatureMetadata(
      FeatureGroupName   => 'MyFeatureGroupNameOrArn',
      FeatureName        => 'MyFeatureName',
      Description        => 'MyFeatureDescription',      # OPTIONAL
      ParameterAdditions => [
        {
          Key   => 'MyFeatureParameterKey',      # min: 1, max: 255; OPTIONAL
          Value => 'MyFeatureParameterValue',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ParameterRemovals => [
        'MyFeatureParameterKey', ...    # min: 1, max: 255; OPTIONAL
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateFeatureMetadata>

=head1 ATTRIBUTES


=head2 Description => Str

A description that you can write to better describe the feature.



=head2 B<REQUIRED> FeatureGroupName => Str

The name or Amazon Resource Name (ARN) of the feature group containing
the feature that you're updating.



=head2 B<REQUIRED> FeatureName => Str

The name of the feature that you're updating.



=head2 ParameterAdditions => ArrayRef[L<Paws::SageMaker::FeatureParameter>]

A list of key-value pairs that you can add to better describe the
feature.



=head2 ParameterRemovals => ArrayRef[Str|Undef]

A list of parameter keys that you can specify to remove parameters that
describe your feature.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFeatureMetadata in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

