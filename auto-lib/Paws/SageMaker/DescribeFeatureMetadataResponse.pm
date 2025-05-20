
package Paws::SageMaker::DescribeFeatureMetadataResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has FeatureGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureType => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureParameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFeatureMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp indicating when the feature was created.


=head2 Description => Str

The description you added to describe the feature.


=head2 B<REQUIRED> FeatureGroupArn => Str

The Amazon Resource Number (ARN) of the feature group that contains the
feature.


=head2 B<REQUIRED> FeatureGroupName => Str

The name of the feature group that you've specified.


=head2 B<REQUIRED> FeatureName => Str

The name of the feature that you've specified.


=head2 B<REQUIRED> FeatureType => Str

The data type of the feature.

Valid values are: C<"Integral">, C<"Fractional">, C<"String">
=head2 B<REQUIRED> LastModifiedTime => Str

A timestamp indicating when the metadata for the feature group was
modified. For example, if you add a parameter describing the feature,
the timestamp changes to reflect the last time you


=head2 Parameters => ArrayRef[L<Paws::SageMaker::FeatureParameter>]

The key-value pairs that you added to describe the feature.


=head2 _request_id => Str


=cut

1;