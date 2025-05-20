
package Paws::CloudWatch::PutMetricData;
  use Moose;
  has EntityMetricData => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::EntityMetricData]');
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDatum]');
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has StrictEntityValidation => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricData - Arguments for method PutMetricData on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricData on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricData.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    $monitoring->PutMetricData(
      Namespace        => 'MyNamespace',
      EntityMetricData => [
        {
          Entity => {
            Attributes => {
              'MyEntityAttributesMapKeyString' =>
                'MyEntityAttributesMapValueString'
              ,    # key: min: 1, max: 256, value: min: 1, max: 2048
            },    # max: 10; OPTIONAL
            KeyAttributes => {
              'MyEntityKeyAttributesMapKeyString' =>
                'MyEntityKeyAttributesMapValueString'
              ,    # key: min: 1, max: 32, value: min: 1, max: 2048
            },    # min: 2, max: 4; OPTIONAL
          },    # OPTIONAL
          MetricData => [
            {
              MetricName => 'MyMetricName',    # min: 1, max: 255
              Counts     => [ 1, ... ],        # OPTIONAL
              Dimensions => [
                {
                  Name  => 'MyDimensionName',     # min: 1, max: 255
                  Value => 'MyDimensionValue',    # min: 1, max: 1024

                },
                ...
              ],    # max: 30; OPTIONAL
              StatisticValues => {
                Maximum     => 1,
                Minimum     => 1,
                SampleCount => 1,
                Sum         => 1,

              },    # OPTIONAL
              StorageResolution => 1,                        # min: 1; OPTIONAL
              Timestamp         => '1970-01-01T01:00:00',    # OPTIONAL
              Unit              => 'Seconds'
              , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
              Value  => 1,
              Values => [ 1, ... ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MetricData => [
        {
          MetricName => 'MyMetricName',    # min: 1, max: 255
          Counts     => [ 1, ... ],        # OPTIONAL
          Dimensions => [
            {
              Name  => 'MyDimensionName',     # min: 1, max: 255
              Value => 'MyDimensionValue',    # min: 1, max: 1024

            },
            ...
          ],    # max: 30; OPTIONAL
          StatisticValues => {
            Maximum     => 1,
            Minimum     => 1,
            SampleCount => 1,
            Sum         => 1,

          },    # OPTIONAL
          StorageResolution => 1,                        # min: 1; OPTIONAL
          Timestamp         => '1970-01-01T01:00:00',    # OPTIONAL
          Unit              => 'Seconds'
          , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
          Value  => 1,
          Values => [ 1, ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      StrictEntityValidation => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutMetricData>

=head1 ATTRIBUTES


=head2 EntityMetricData => ArrayRef[L<Paws::CloudWatch::EntityMetricData>]

Data for metrics that contain associated entity information. You can
include up to two C<EntityMetricData> objects, each of which can
contain a single C<Entity> and associated metrics.

The limit of metrics allowed, 1000, is the sum of both
C<EntityMetricData> and C<MetricData> metrics.



=head2 MetricData => ArrayRef[L<Paws::CloudWatch::MetricDatum>]

The data for the metrics. Use this parameter if your metrics do not
contain associated entities. The array can include no more than 1000
metrics per call.

The limit of metrics allowed, 1000, is the sum of both
C<EntityMetricData> and C<MetricData> metrics.



=head2 B<REQUIRED> Namespace => Str

The namespace for the metric data. You can use ASCII characters for the
namespace, except for control characters which are not supported.

To avoid conflicts with Amazon Web Services service namespaces, you
should not specify a namespace that begins with C<AWS/>



=head2 StrictEntityValidation => Bool

Whether to accept valid metric data when an invalid entity is sent.

=over

=item *

When set to C<true>: Any validation error (for entity or metric data)
will fail the entire request, and no data will be ingested. The failed
operation will return a 400 result with the error.

=item *

When set to C<false>: Validation errors in the entity will not
associate the metric with the entity, but the metric data will still be
accepted and ingested. Validation errors in the metric data will fail
the entire request, and no data will be ingested.

In the case of an invalid entity, the operation will return a C<200>
status, but an additional response header will contain information
about the validation errors. The new header, C<X-Amzn-Failure-Message>
is an enumeration of the following values:

=over

=item *

C<InvalidEntity> - The provided entity is invalid.

=item *

C<InvalidKeyAttributes> - The provided C<KeyAttributes> of an entity is
invalid.

=item *

C<InvalidAttributes> - The provided C<Attributes> of an entity is
invalid.

=item *

C<InvalidTypeValue> - The provided C<Type> in the C<KeyAttributes> of
an entity is invalid.

=item *

C<EntitySizeTooLarge> - The number of C<EntityMetricData> objects
allowed is 2.

=item *

C<MissingRequiredFields> - There are missing required fields in the
C<KeyAttributes> for the provided C<Type>.

=back

For details of the requirements for specifying an entity, see How to
add related information to telemetry
(https://docs.aws.amazon.com/adding-your-own-related-telemetry.html) in
the I<CloudWatch User Guide>.

=back

This parameter is I<required> when C<EntityMetricData> is included.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricData in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

