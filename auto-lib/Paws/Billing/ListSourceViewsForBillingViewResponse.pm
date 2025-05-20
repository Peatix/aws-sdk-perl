
package Paws::Billing::ListSourceViewsForBillingViewResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SourceViews => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sourceViews' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ListSourceViewsForBillingViewResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that is used on subsequent calls to list billing
views.


=head2 B<REQUIRED> SourceViews => ArrayRef[Str|Undef]

A list of billing views used as the data source for the custom billing
view.


=head2 _request_id => Str


=cut

1;