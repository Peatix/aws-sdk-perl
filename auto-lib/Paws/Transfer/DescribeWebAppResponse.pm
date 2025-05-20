
package Paws::Transfer::DescribeWebAppResponse;
  use Moose;
  has WebApp => (is => 'ro', isa => 'Paws::Transfer::DescribedWebApp', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeWebAppResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebApp => L<Paws::Transfer::DescribedWebApp>

Returns a structure that contains the details of the web app.


=head2 _request_id => Str


=cut

1;