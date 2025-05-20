
package Paws::EKS::CreateEksAnywhereSubscription;
  use Moose;
  has AutoRenew => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoRenew');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has LicenseQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'licenseQuantity');
  has LicenseType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseType');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Term => (is => 'ro', isa => 'Paws::EKS::EksAnywhereSubscriptionTerm', traits => ['NameInRequest'], request_name => 'term', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEksAnywhereSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/eks-anywhere-subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateEksAnywhereSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateEksAnywhereSubscription - Arguments for method CreateEksAnywhereSubscription on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEksAnywhereSubscription on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateEksAnywhereSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEksAnywhereSubscription.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateEksAnywhereSubscriptionResponse =
      $eks->CreateEksAnywhereSubscription(
      Name => 'MyEksAnywhereSubscriptionName',
      Term => {
        Duration => 1,           # OPTIONAL
        Unit     => 'MONTHS',    # values: MONTHS; OPTIONAL
      },
      AutoRenew          => 1,             # OPTIONAL
      ClientRequestToken => 'MyString',    # OPTIONAL
      LicenseQuantity    => 1,             # OPTIONAL
      LicenseType        => 'Cluster',     # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Subscription = $CreateEksAnywhereSubscriptionResponse->Subscription;

    # Returns a L<Paws::EKS::CreateEksAnywhereSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateEksAnywhereSubscription>

=head1 ATTRIBUTES


=head2 AutoRenew => Bool

A boolean indicating whether the subscription auto renews at the end of
the term.



=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 LicenseQuantity => Int

The number of licenses to purchase with the subscription. Valid values
are between 1 and 100. This value can't be changed after creating the
subscription.



=head2 LicenseType => Str

The license type for all licenses in the subscription. Valid value is
CLUSTER. With the CLUSTER license type, each license covers support for
a single EKS Anywhere cluster.

Valid values are: C<"Cluster">

=head2 B<REQUIRED> Name => Str

The unique name for your subscription. It must be unique in your Amazon
Web Services account in the Amazon Web Services Region you're creating
the subscription in. The name can contain only alphanumeric characters
(case-sensitive), hyphens, and underscores. It must start with an
alphabetic character and can't be longer than 100 characters.



=head2 Tags => L<Paws::EKS::TagMap>

The metadata for a subscription to assist with categorization and
organization. Each tag consists of a key and an optional value.
Subscription tags don't propagate to any other resources associated
with the subscription.



=head2 B<REQUIRED> Term => L<Paws::EKS::EksAnywhereSubscriptionTerm>

An object representing the term duration and term unit type of your
subscription. This determines the term length of your subscription.
Valid values are MONTHS for term unit and 12 or 36 for term duration,
indicating a 12 month or 36 month subscription. This value cannot be
changed after creating the subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEksAnywhereSubscription in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

