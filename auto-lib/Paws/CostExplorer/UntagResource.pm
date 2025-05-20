
package Paws::CostExplorer::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceTagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UntagResource - Arguments for method UntagResource on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $UntagResourceResponse = $ce->UntagResource(
      ResourceArn     => 'MyArn',
      ResourceTagKeys => [
        'MyResourceTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource. For a list of supported
resources, see ResourceTag
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html).



=head2 B<REQUIRED> ResourceTagKeys => ArrayRef[Str|Undef]

A list of tag keys associated with tags that need to be removed from
the resource. If you specify a tag key that doesn't exist, it's
ignored. Although the maximum number of array members is 200, user-tag
maximum is 50. The remaining are reserved for Amazon Web Services use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

