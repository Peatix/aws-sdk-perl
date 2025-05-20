
package Paws::AppStream::DescribeApplications;
  use Moose;
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeApplications - Arguments for method DescribeApplications on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplications on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplications.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeApplicationsResult = $appstream2->DescribeApplications(
      Arns       => [ 'MyArn', ... ],    # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyString',          # OPTIONAL
    );

    # Results:
    my $Applications = $DescribeApplicationsResult->Applications;
    my $NextToken    = $DescribeApplicationsResult->NextToken;

    # Returns a L<Paws::AppStream::DescribeApplicationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeApplications>

=head1 ATTRIBUTES


=head2 Arns => ArrayRef[Str|Undef]

The ARNs for the applications.



=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplications in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

