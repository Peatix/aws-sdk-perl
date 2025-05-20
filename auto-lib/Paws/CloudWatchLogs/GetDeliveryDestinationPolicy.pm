
package Paws::CloudWatchLogs::GetDeliveryDestinationPolicy;
  use Moose;
  has DeliveryDestinationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deliveryDestinationName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeliveryDestinationPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetDeliveryDestinationPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetDeliveryDestinationPolicy - Arguments for method GetDeliveryDestinationPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeliveryDestinationPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetDeliveryDestinationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeliveryDestinationPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetDeliveryDestinationPolicyResponse =
      $logs->GetDeliveryDestinationPolicy(
      DeliveryDestinationName => 'MyDeliveryDestinationName',

      );

    # Results:
    my $Policy = $GetDeliveryDestinationPolicyResponse->Policy;

# Returns a L<Paws::CloudWatchLogs::GetDeliveryDestinationPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetDeliveryDestinationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryDestinationName => Str

The name of the delivery destination that you want to retrieve the
policy of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeliveryDestinationPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

