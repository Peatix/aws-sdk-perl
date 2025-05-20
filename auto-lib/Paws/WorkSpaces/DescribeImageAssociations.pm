
package Paws::WorkSpaces::DescribeImageAssociations;
  use Moose;
  has AssociatedResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeImageAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeImageAssociations - Arguments for method DescribeImageAssociations on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImageAssociations on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeImageAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImageAssociations.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeImageAssociationsResult =
      $workspaces->DescribeImageAssociations(
      AssociatedResourceTypes => [
        'APPLICATION', ...    # values: APPLICATION
      ],
      ImageId => 'MyWorkspaceImageId',

      );

    # Results:
    my $Associations = $DescribeImageAssociationsResult->Associations;

    # Returns a L<Paws::WorkSpaces::DescribeImageAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeImageAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedResourceTypes => ArrayRef[Str|Undef]

The resource types of the associated resource.



=head2 B<REQUIRED> ImageId => Str

The identifier of the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImageAssociations in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

