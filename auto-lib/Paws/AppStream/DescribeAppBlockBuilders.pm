
package Paws::AppStream::DescribeAppBlockBuilders;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppBlockBuilders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeAppBlockBuildersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeAppBlockBuilders - Arguments for method DescribeAppBlockBuilders on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppBlockBuilders on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeAppBlockBuilders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppBlockBuilders.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeAppBlockBuildersResult = $appstream2->DescribeAppBlockBuilders(
      MaxResults => 1,    # OPTIONAL
      Names      => [
        'MyString', ...    # min: 1
      ],    # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AppBlockBuilders = $DescribeAppBlockBuildersResult->AppBlockBuilders;
    my $NextToken        = $DescribeAppBlockBuildersResult->NextToken;

    # Returns a L<Paws::AppStream::DescribeAppBlockBuildersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeAppBlockBuilders>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of each page of results. The maximum value is 25.



=head2 Names => ArrayRef[Str|Undef]

The names of the app block builders.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppBlockBuilders in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

