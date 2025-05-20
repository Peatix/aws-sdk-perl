
package Paws::Billing::ListSourceViewsForBillingView;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSourceViewsForBillingView');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billing::ListSourceViewsForBillingViewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ListSourceViewsForBillingView - Arguments for method ListSourceViewsForBillingView on L<Paws::Billing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSourceViewsForBillingView on the
L<AWS Billing|Paws::Billing> service. Use the attributes of this class
as arguments to method ListSourceViewsForBillingView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSourceViewsForBillingView.

=head1 SYNOPSIS

    my $billing = Paws->service('Billing');
    my $ListSourceViewsForBillingViewResponse =
      $billing->ListSourceViewsForBillingView(
      Arn        => 'MyBillingViewArn',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyPageToken',        # OPTIONAL
      );

    # Results:
    my $NextToken   = $ListSourceViewsForBillingViewResponse->NextToken;
    my $SourceViews = $ListSourceViewsForBillingViewResponse->SourceViews;

    # Returns a L<Paws::Billing::ListSourceViewsForBillingViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing/ListSourceViewsForBillingView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that can be used to uniquely identify
the billing view.



=head2 MaxResults => Int

The number of entries a paginated response contains.



=head2 NextToken => Str

The pagination token that is used on subsequent calls to list billing
views.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSourceViewsForBillingView in L<Paws::Billing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

