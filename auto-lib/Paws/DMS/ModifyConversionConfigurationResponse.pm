
package Paws::DMS::ModifyConversionConfigurationResponse;
  use Moose;
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyConversionConfigurationResponse

=head1 ATTRIBUTES


=head2 MigrationProjectIdentifier => Str

The name or Amazon Resource Name (ARN) of the modified configuration.


=head2 _request_id => Str


=cut

1;