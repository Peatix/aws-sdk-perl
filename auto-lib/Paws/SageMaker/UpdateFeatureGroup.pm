
package Paws::SageMaker::UpdateFeatureGroup;
  use Moose;
  has FeatureAdditions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureDefinition]');
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OnlineStoreConfig => (is => 'ro', isa => 'Paws::SageMaker::OnlineStoreConfigUpdate');
  has ThroughputConfig => (is => 'ro', isa => 'Paws::SageMaker::ThroughputConfigUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFeatureGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateFeatureGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateFeatureGroup - Arguments for method UpdateFeatureGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFeatureGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateFeatureGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFeatureGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateFeatureGroupResponse = $api . sagemaker->UpdateFeatureGroup(
      FeatureGroupName => 'MyFeatureGroupNameOrArn',
      FeatureAdditions => [
        {
          FeatureName => 'MyFeatureName', # min: 1, max: 64
          FeatureType => 'Integral',      # values: Integral, Fractional, String
          CollectionConfig => {
            VectorConfig => {
              Dimension => 1,             # min: 1, max: 8192

            },    # OPTIONAL
          },    # OPTIONAL
          CollectionType => 'List',    # values: List, Set, Vector; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OnlineStoreConfig => {
        TtlDuration => {
          Unit =>
            'Seconds',  # values: Seconds, Minutes, Hours, Days, Weeks; OPTIONAL
          Value => 1,   # min: 1; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ThroughputConfig => {
        ProvisionedReadCapacityUnits  => 1,    # max: 10000000; OPTIONAL
        ProvisionedWriteCapacityUnits => 1,    # max: 10000000; OPTIONAL
        ThroughputMode => 'OnDemand',  # values: OnDemand, Provisioned; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FeatureGroupArn = $UpdateFeatureGroupResponse->FeatureGroupArn;

    # Returns a L<Paws::SageMaker::UpdateFeatureGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateFeatureGroup>

=head1 ATTRIBUTES


=head2 FeatureAdditions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]

Updates the feature group. Updating a feature group is an asynchronous
operation. When you get an HTTP 200 response, you've made a valid
request. It takes some time after you've made a valid request for
Feature Store to update the feature group.



=head2 B<REQUIRED> FeatureGroupName => Str

The name or Amazon Resource Name (ARN) of the feature group that you're
updating.



=head2 OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfigUpdate>

Updates the feature group online store configuration.



=head2 ThroughputConfig => L<Paws::SageMaker::ThroughputConfigUpdate>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFeatureGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

