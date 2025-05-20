
package Paws::EMR::DescribeReleaseLabel;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ReleaseLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReleaseLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::DescribeReleaseLabelOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeReleaseLabel - Arguments for method DescribeReleaseLabel on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReleaseLabel on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method DescribeReleaseLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReleaseLabel.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $DescribeReleaseLabelOutput = $elasticmapreduce->DescribeReleaseLabel(
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      ReleaseLabel => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Applications        = $DescribeReleaseLabelOutput->Applications;
    my $AvailableOSReleases = $DescribeReleaseLabelOutput->AvailableOSReleases;
    my $NextToken           = $DescribeReleaseLabelOutput->NextToken;
    my $ReleaseLabel        = $DescribeReleaseLabelOutput->ReleaseLabel;

    # Returns a L<Paws::EMR::DescribeReleaseLabelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/DescribeReleaseLabel>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Reserved for future use. Currently set to null.



=head2 NextToken => Str

The pagination token. Reserved for future use. Currently set to null.



=head2 ReleaseLabel => Str

The target release label to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReleaseLabel in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

