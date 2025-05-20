
package Paws::TimestreamQuery::PrepareQueryResponse;
  use Moose;
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::SelectColumn]', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::ParameterMapping]', required => 1);
  has QueryString => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::PrepareQueryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Columns => ArrayRef[L<Paws::TimestreamQuery::SelectColumn>]

A list of SELECT clause columns of the submitted query string.


=head2 B<REQUIRED> Parameters => ArrayRef[L<Paws::TimestreamQuery::ParameterMapping>]

A list of parameters used in the submitted query string.


=head2 B<REQUIRED> QueryString => Str

The query string that you want prepare.


=head2 _request_id => Str


=cut

1;