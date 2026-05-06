
package Paws::Budgets::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::ResourceTag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::TagResource - Arguments for method TagResource on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $TagResourceResponse = $budgets->TagResource(
      ResourceARN  => 'MyAmazonResourceName',
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The unique identifier for the resource.



=head2 B<REQUIRED> ResourceTags => ArrayRef[L<Paws::Budgets::ResourceTag>]

The tags associated with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

