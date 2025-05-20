
package Paws::ApplicationAutoScaling::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::TagResource - Arguments for method TagResource on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
    my $TagResourceResponse = $application -autoscaling->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

Identifies the Application Auto Scaling scalable target that you want
to apply tags to.

For example:
C<arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123>

To get the ARN for a scalable target, use DescribeScalableTargets.



=head2 B<REQUIRED> Tags => L<Paws::ApplicationAutoScaling::TagMap>

The tags assigned to the resource. A tag is a label that you assign to
an Amazon Web Services resource.

Each tag consists of a tag key and a tag value.

You cannot have more than one tag on an Application Auto Scaling
scalable target with the same tag key. If you specify an existing tag
key with a different tag value, Application Auto Scaling replaces the
current tag value with the specified one.

For information about the rules that apply to tag keys and tag values,
see User-defined tag restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<Amazon Web Services Billing User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

