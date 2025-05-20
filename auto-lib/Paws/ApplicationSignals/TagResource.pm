
package Paws::ApplicationSignals::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tag-resource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::TagResource - Arguments for method TagResource on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $TagResourceResponse = $application -signals->TagResource(
      ResourceArn => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the CloudWatch resource that you want
to set tags for.

The ARN format of an Application Signals SLO is
C<arn:aws:cloudwatch:I<Region>:I<account-id>:slo:I<slo-name>>

For more information about ARN format, see Resource Types Defined by
Amazon CloudWatch
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies)
in the I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ApplicationSignals::Tag>]

The list of key-value pairs to associate with the alarm.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

