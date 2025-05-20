
package Paws::Transfer::DescribeWebAppCustomizationResponse;
  use Moose;
  has WebAppCustomization => (is => 'ro', isa => 'Paws::Transfer::DescribedWebAppCustomization', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeWebAppCustomizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebAppCustomization => L<Paws::Transfer::DescribedWebAppCustomization>

Returns a structure that contains the details of the web app
customizations.


=head2 _request_id => Str


=cut

1;