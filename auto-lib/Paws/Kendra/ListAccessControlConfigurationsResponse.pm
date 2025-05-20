
package Paws::Kendra::ListAccessControlConfigurationsResponse;
  use Moose;
  has AccessControlConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::AccessControlConfigurationSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListAccessControlConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessControlConfigurations => ArrayRef[L<Paws::Kendra::AccessControlConfigurationSummary>]

The details of your access control configurations.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token, which
you can use in the subsequent request to retrieve the next set of
access control configurations.


=head2 _request_id => Str


=cut

1;