
package Paws::WorkSpaces::DescribeApplicationAssociations;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has AssociatedResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeApplicationAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeApplicationAssociations - Arguments for method DescribeApplicationAssociations on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationAssociations on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeApplicationAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationAssociations.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeApplicationAssociationsResult =
      $workspaces->DescribeApplicationAssociations(
      ApplicationId           => 'MyWorkSpaceApplicationId',
      AssociatedResourceTypes => [
        'WORKSPACE', ...    # values: WORKSPACE, BUNDLE, IMAGE
      ],
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $Associations = $DescribeApplicationAssociationsResult->Associations;
    my $NextToken    = $DescribeApplicationAssociationsResult->NextToken;

  # Returns a L<Paws::WorkSpaces::DescribeApplicationAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeApplicationAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the specified application.



=head2 B<REQUIRED> AssociatedResourceTypes => ArrayRef[Str|Undef]

The resource type of the associated resources.



=head2 MaxResults => Int

The maximum number of associations to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationAssociations in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

