
package Paws::QConnect::StartImportJobResponse;
  use Moose;
  has ImportJob => (is => 'ro', isa => 'Paws::QConnect::ImportJobData', traits => ['NameInRequest'], request_name => 'importJob');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::StartImportJobResponse

=head1 ATTRIBUTES


=head2 ImportJob => L<Paws::QConnect::ImportJobData>

The import job.


=head2 _request_id => Str


=cut

