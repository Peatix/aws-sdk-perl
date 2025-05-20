
package Paws::CloudTrail::GenerateQueryResponse;
  use Moose;
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryAlias => (is => 'ro', isa => 'Str');
  has QueryStatement => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GenerateQueryResponse

=head1 ATTRIBUTES


=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.


=head2 QueryAlias => Str

An alias that identifies the prompt. When you run the C<StartQuery>
operation, you can pass in either the C<QueryAlias> or
C<QueryStatement> parameter.


=head2 QueryStatement => Str

The SQL query statement generated from the prompt.


=head2 _request_id => Str


=cut

1;