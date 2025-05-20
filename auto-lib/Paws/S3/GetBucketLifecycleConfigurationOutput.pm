
package Paws::S3::GetBucketLifecycleConfigurationOutput;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::LifecycleRule]', request_name => 'Rule', traits => ['NameInRequest']);
  has TransitionDefaultMinimumObjectSize => (is => 'ro', isa => 'Str', header_name => 'x-amz-transition-default-minimum-object-size', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLifecycleConfigurationOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::S3::LifecycleRule>]

Container for a lifecycle rule.



=head2 TransitionDefaultMinimumObjectSize => Str

Indicates which default minimum object size behavior is applied to the
lifecycle configuration.

This parameter applies to general purpose buckets only. It isn't
supported for directory bucket lifecycle configurations.

=over

=item *

C<all_storage_classes_128K> - Objects smaller than 128 KB will not
transition to any storage class by default.

=item *

C<varies_by_storage_class> - Objects smaller than 128 KB will
transition to Glacier Flexible Retrieval or Glacier Deep Archive
storage classes. By default, all other storage classes will prevent
transitions smaller than 128 KB.

=back

To customize the minimum object size for any transition you can add a
filter that specifies a custom C<ObjectSizeGreaterThan> or
C<ObjectSizeLessThan> in the body of your transition rule. Custom
filters always take precedence over the default transition behavior.

Valid values are: C<"varies_by_storage_class">, C<"all_storage_classes_128K">


=cut

