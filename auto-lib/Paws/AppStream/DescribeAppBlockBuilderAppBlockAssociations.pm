
package Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociations;
  use Moose;
  has AppBlockArn => (is => 'ro', isa => 'Str');
  has AppBlockBuilderName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppBlockBuilderAppBlockAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociations - Arguments for method DescribeAppBlockBuilderAppBlockAssociations on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppBlockBuilderAppBlockAssociations on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeAppBlockBuilderAppBlockAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppBlockBuilderAppBlockAssociations.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeAppBlockBuilderAppBlockAssociationsResult =
      $appstream2->DescribeAppBlockBuilderAppBlockAssociations(
      AppBlockArn         => 'MyArn',       # OPTIONAL
      AppBlockBuilderName => 'MyName',      # OPTIONAL
      MaxResults          => 1,             # OPTIONAL
      NextToken           => 'MyString',    # OPTIONAL
      );

    # Results:
    my $AppBlockBuilderAppBlockAssociations =
      $DescribeAppBlockBuilderAppBlockAssociationsResult
      ->AppBlockBuilderAppBlockAssociations;
    my $NextToken =
      $DescribeAppBlockBuilderAppBlockAssociationsResult->NextToken;

# Returns a L<Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeAppBlockBuilderAppBlockAssociations>

=head1 ATTRIBUTES


=head2 AppBlockArn => Str

The ARN of the app block.



=head2 AppBlockBuilderName => Str

The name of the app block builder.



=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppBlockBuilderAppBlockAssociations in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

