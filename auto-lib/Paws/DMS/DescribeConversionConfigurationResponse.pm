
package Paws::DMS::DescribeConversionConfigurationResponse;
  use Moose;
  has ConversionConfiguration => (is => 'ro', isa => 'Str');
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeConversionConfigurationResponse

=head1 ATTRIBUTES


=head2 ConversionConfiguration => Str

The configuration parameters for the schema conversion project.


=head2 MigrationProjectIdentifier => Str

The name or Amazon Resource Name (ARN) for the schema conversion
project.


=head2 _request_id => Str


=cut

1;