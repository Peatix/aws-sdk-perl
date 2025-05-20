
package Paws::Kendra::CreateAccessControlConfigurationResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateAccessControlConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the access control configuration for your documents
in an index.


=head2 _request_id => Str


=cut

1;