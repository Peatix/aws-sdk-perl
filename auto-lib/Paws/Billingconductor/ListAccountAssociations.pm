
package Paws::Billingconductor::ListAccountAssociations;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListAccountAssociationsFilter');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-account-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListAccountAssociationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListAccountAssociations - Arguments for method ListAccountAssociations on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccountAssociations on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListAccountAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccountAssociations.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListAccountAssociationsOutput =
      $billingconductor->ListAccountAssociations(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        AccountId  => 'MyAccountId',         # OPTIONAL
        AccountIds => [
          'MyAccountId', ...                 # OPTIONAL
        ],    # min: 1, max: 30; OPTIONAL
        Association => 'MyAssociation',    # OPTIONAL
      },    # OPTIONAL
      NextToken => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $LinkedAccounts = $ListAccountAssociationsOutput->LinkedAccounts;
    my $NextToken      = $ListAccountAssociationsOutput->NextToken;

    # Returns a L<Paws::Billingconductor::ListAccountAssociationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListAccountAssociations>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period to get account associations.



=head2 Filters => L<Paws::Billingconductor::ListAccountAssociationsFilter>

The filter on the account ID of the linked account, or any of the
following:

C<MONITORED>: linked accounts that are associated to billing groups.

C<UNMONITORED>: linked accounts that aren't associated to billing
groups.

C<Billing Group Arn>: linked accounts that are associated to the
provided billing group Arn.



=head2 NextToken => Str

The pagination token that's used on subsequent calls to retrieve
accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccountAssociations in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

