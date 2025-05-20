
package Paws::DMS::UpdateSubscriptionsToEventBridge;
  use Moose;
  has ForceMove => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscriptionsToEventBridge');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::UpdateSubscriptionsToEventBridgeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::UpdateSubscriptionsToEventBridge - Arguments for method UpdateSubscriptionsToEventBridge on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriptionsToEventBridge on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method UpdateSubscriptionsToEventBridge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriptionsToEventBridge.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $UpdateSubscriptionsToEventBridgeResponse =
      $dms->UpdateSubscriptionsToEventBridge(
      ForceMove => 1,    # OPTIONAL
      );

    # Results:
    my $Result = $UpdateSubscriptionsToEventBridgeResponse->Result;

    # Returns a L<Paws::DMS::UpdateSubscriptionsToEventBridgeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/UpdateSubscriptionsToEventBridge>

=head1 ATTRIBUTES


=head2 ForceMove => Bool

When set to true, this operation migrates DMS subscriptions for Amazon
SNS notifications no matter what your replication instance version is.
If not set or set to false, this operation runs only when all your
replication instances are from DMS version 3.4.5 or higher.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriptionsToEventBridge in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

