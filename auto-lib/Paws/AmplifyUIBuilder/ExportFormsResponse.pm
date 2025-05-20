
package Paws::AmplifyUIBuilder::ExportFormsResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::Form]', traits => ['NameInRequest'], request_name => 'entities', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ExportFormsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::AmplifyUIBuilder::Form>]

Represents the configuration of the exported forms.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

