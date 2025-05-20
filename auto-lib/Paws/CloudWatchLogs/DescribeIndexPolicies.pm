
package Paws::CloudWatchLogs::DescribeIndexPolicies;
  use Moose;
  has LogGroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupIdentifiers' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeIndexPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeIndexPolicies - Arguments for method DescribeIndexPolicies on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIndexPolicies on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeIndexPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIndexPolicies.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeIndexPoliciesResponse = $logs->DescribeIndexPolicies(
      LogGroupIdentifiers => [
        'MyLogGroupIdentifier', ...    # min: 1, max: 2048
      ],
      NextToken => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $IndexPolicies = $DescribeIndexPoliciesResponse->IndexPolicies;
    my $NextToken     = $DescribeIndexPoliciesResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeIndexPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeIndexPolicies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifiers => ArrayRef[Str|Undef]

An array containing the name or ARN of the log group that you want to
retrieve field index policies for.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIndexPolicies in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

