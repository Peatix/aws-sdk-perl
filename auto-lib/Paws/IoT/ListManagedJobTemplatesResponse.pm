
package Paws::IoT::ListManagedJobTemplatesResponse;
  use Moose;
  has ManagedJobTemplates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ManagedJobTemplateSummary]', traits => ['NameInRequest'], request_name => 'managedJobTemplates');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListManagedJobTemplatesResponse

=head1 ATTRIBUTES


=head2 ManagedJobTemplates => ArrayRef[L<Paws::IoT::ManagedJobTemplateSummary>]

A list of managed job templates that are returned.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

