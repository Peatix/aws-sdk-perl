
package Paws::AppStream::DescribeThemeForStackResult;
  use Moose;
  has Theme => (is => 'ro', isa => 'Paws::AppStream::Theme');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeThemeForStackResult

=head1 ATTRIBUTES


=head2 Theme => L<Paws::AppStream::Theme>

The theme object that contains the metadata of the custom branding.


=head2 _request_id => Str


=cut

1;