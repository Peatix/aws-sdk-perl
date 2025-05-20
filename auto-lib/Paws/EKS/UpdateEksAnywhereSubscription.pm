
package Paws::EKS::UpdateEksAnywhereSubscription;
  use Moose;
  has AutoRenew => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoRenew', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEksAnywhereSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/eks-anywhere-subscriptions/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateEksAnywhereSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateEksAnywhereSubscription - Arguments for method UpdateEksAnywhereSubscription on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEksAnywhereSubscription on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateEksAnywhereSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEksAnywhereSubscription.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateEksAnywhereSubscriptionResponse =
      $eks->UpdateEksAnywhereSubscription(
      AutoRenew          => 1,
      Id                 => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Subscription = $UpdateEksAnywhereSubscriptionResponse->Subscription;

    # Returns a L<Paws::EKS::UpdateEksAnywhereSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateEksAnywhereSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoRenew => Bool

A boolean indicating whether or not to automatically renew the
subscription.



=head2 ClientRequestToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request.



=head2 B<REQUIRED> Id => Str

The ID of the subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEksAnywhereSubscription in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

