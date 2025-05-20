
package Paws::Billing::ListBillingViews;
  use Moose;
  has ActiveTimeRange => (is => 'ro', isa => 'Paws::Billing::ActiveTimeRange', traits => ['NameInRequest'], request_name => 'activeTimeRange' );
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'arns' );
  has BillingViewTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'billingViewTypes' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OwnerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccountId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillingViews');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billing::ListBillingViewsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ListBillingViews - Arguments for method ListBillingViews on L<Paws::Billing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillingViews on the
L<AWS Billing|Paws::Billing> service. Use the attributes of this class
as arguments to method ListBillingViews.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillingViews.

=head1 SYNOPSIS

    my $billing = Paws->service('Billing');
    my $ListBillingViewsResponse = $billing->ListBillingViews(
      ActiveTimeRange => {
        ActiveAfterInclusive  => '1970-01-01T01:00:00',
        ActiveBeforeInclusive => '1970-01-01T01:00:00',

      },    # OPTIONAL
      Arns             => [ 'MyBillingViewArn', ... ],    # OPTIONAL
      BillingViewTypes => [
        'PRIMARY', ...    # values: PRIMARY, BILLING_GROUP, CUSTOM
      ],    # OPTIONAL
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyPageToken',    # OPTIONAL
      OwnerAccountId => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $BillingViews = $ListBillingViewsResponse->BillingViews;
    my $NextToken    = $ListBillingViewsResponse->NextToken;

    # Returns a L<Paws::Billing::ListBillingViewsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing/ListBillingViews>

=head1 ATTRIBUTES


=head2 ActiveTimeRange => L<Paws::Billing::ActiveTimeRange>

The time range for the billing views listed. C<PRIMARY> billing view is
always listed. C<BILLING_GROUP> billing views are listed for time
ranges when the associated billing group resource in Billing Conductor
is active. The time range must be within one calendar month.



=head2 Arns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) that can be used to uniquely identify
the billing view.



=head2 BillingViewTypes => ArrayRef[Str|Undef]

The type of billing view.



=head2 MaxResults => Int

The maximum number of billing views to retrieve. Default is 100.



=head2 NextToken => Str

The pagination token that is used on subsequent calls to list billing
views.



=head2 OwnerAccountId => Str

The list of owners of the billing view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillingViews in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

