
package Paws::SageMakerFeatureStoreRuntime::PutRecord;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FeatureGroupName', required => 1);
  has Record => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::FeatureValue]', required => 1);
  has TargetStores => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TtlDuration => (is => 'ro', isa => 'Paws::SageMakerFeatureStoreRuntime::TtlDuration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/FeatureGroup/{FeatureGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::PutRecord - Arguments for method PutRecord on L<Paws::SageMakerFeatureStoreRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecord on the
L<Amazon SageMaker Feature Store Runtime|Paws::SageMakerFeatureStoreRuntime> service. Use the attributes of this class
as arguments to method PutRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecord.

=head1 SYNOPSIS

    my $featurestore-runtime.sagemaker = Paws->service('SageMakerFeatureStoreRuntime');
    $featurestore -runtime . sagemaker->PutRecord(
      FeatureGroupName => 'MyFeatureGroupNameOrArn',
      Record           => [
        {
          FeatureName       => 'MyFeatureName',      # min: 1, max: 64
          ValueAsString     => 'MyValueAsString',    # max: 358400; OPTIONAL
          ValueAsStringList => [
            'MyValueAsString', ...                   # max: 358400; OPTIONAL
          ],    # max: 358400; OPTIONAL
        },
        ...
      ],
      TargetStores => [
        'OnlineStore',
        ...     # values: OnlineStore, OfflineStore
      ],    # OPTIONAL
      TtlDuration => {
        Unit  => 'Seconds',    # values: Seconds, Minutes, Hours, Days, Weeks
        Value => 1,            # min: 1

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker/PutRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name or Amazon Resource Name (ARN) of the feature group that you
want to insert the record into.



=head2 B<REQUIRED> Record => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::FeatureValue>]

List of FeatureValues to be inserted. This will be a full over-write.
If you only want to update few of the feature values, do the following:

=over

=item *

Use C<GetRecord> to retrieve the latest record.

=item *

Update the record returned from C<GetRecord>.

=item *

Use C<PutRecord> to update feature values.

=back




=head2 TargetStores => ArrayRef[Str|Undef]

A list of stores to which you're adding the record. By default, Feature
Store adds the record to all of the stores that you're using for the
C<FeatureGroup>.



=head2 TtlDuration => L<Paws::SageMakerFeatureStoreRuntime::TtlDuration>

Time to live duration, where the record is hard deleted after the
expiration time is reached; C<ExpiresAt> = C<EventTime> +
C<TtlDuration>. For information on HardDelete, see the DeleteRecord
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html)
API in the Amazon SageMaker API Reference guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecord in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

