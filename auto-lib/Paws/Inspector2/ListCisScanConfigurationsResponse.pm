
package Paws::Inspector2::ListCisScanConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScanConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CisScanConfiguration]', traits => ['NameInRequest'], request_name => 'scanConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScanConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.


=head2 ScanConfigurations => ArrayRef[L<Paws::Inspector2::CisScanConfiguration>]

The CIS scan configuration scan configurations.


=head2 _request_id => Str


=cut

