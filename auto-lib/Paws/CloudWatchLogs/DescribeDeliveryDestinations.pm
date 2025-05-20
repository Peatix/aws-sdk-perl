
package Paws::CloudWatchLogs::DescribeDeliveryDestinations;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeliveryDestinations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDeliveryDestinations - Arguments for method DescribeDeliveryDestinations on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeliveryDestinations on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeDeliveryDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeliveryDestinations.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeDeliveryDestinationsResponse =
      $logs->DescribeDeliveryDestinations(
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $DeliveryDestinations =
      $DescribeDeliveryDestinationsResponse->DeliveryDestinations;
    my $NextToken = $DescribeDeliveryDestinationsResponse->NextToken;

# Returns a L<Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeDeliveryDestinations>

=head1 ATTRIBUTES


=head2 Limit => Int

Optionally specify the maximum number of delivery destinations to
return in the response.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeliveryDestinations in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

