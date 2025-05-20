
package Paws::CodeCatalyst::GetSubscription;
  use Moose;
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/subscription');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSubscription - Arguments for method GetSubscription on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscription on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscription.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetSubscriptionResponse = $codecatalyst->GetSubscription(
      SpaceName => 'MyNameString',

    );

    # Results:
    my $AwsAccountName = $GetSubscriptionResponse->AwsAccountName;
    my $PendingSubscriptionStartTime =
      $GetSubscriptionResponse->PendingSubscriptionStartTime;
    my $PendingSubscriptionType =
      $GetSubscriptionResponse->PendingSubscriptionType;
    my $SubscriptionType = $GetSubscriptionResponse->SubscriptionType;

    # Returns a L<Paws::CodeCatalyst::GetSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscription in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

