
package Paws::CostExplorer::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ResourceTag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::TagResource - Arguments for method TagResource on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $TagResourceResponse = $ce->TagResource(
      ResourceArn  => 'MyArn',
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource. For a list of supported
resources, see ResourceTag
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html).



=head2 B<REQUIRED> ResourceTags => ArrayRef[L<Paws::CostExplorer::ResourceTag>]

A list of tag key-value pairs to be added to the resource.

Each tag consists of a key and a value, and each key must be unique for
the resource. The following restrictions apply to resource tags:

=over

=item *

Although the maximum number of array members is 200, you can assign a
maximum of 50 user-tags to one resource. The remaining are reserved for
Amazon Web Services use

=item *

The maximum length of a key is 128 characters

=item *

The maximum length of a value is 256 characters

=item *

Keys and values can only contain alphanumeric characters, spaces, and
any of the following: C<_.:/=+@->

=item *

Keys and values are case sensitive

=item *

Keys and values are trimmed for any leading or trailing whitespaces

=item *

DonE<rsquo>t use C<aws:> as a prefix for your keys. This prefix is
reserved for Amazon Web Services use

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

