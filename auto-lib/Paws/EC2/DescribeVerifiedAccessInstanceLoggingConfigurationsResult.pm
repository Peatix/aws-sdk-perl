
package Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurationsResult;
  use Moose;
  has LoggingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessInstanceLoggingConfiguration]', request_name => 'loggingConfigurationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVerifiedAccessInstanceLoggingConfigurationsResult

=head1 ATTRIBUTES


=head2 LoggingConfigurations => ArrayRef[L<Paws::EC2::VerifiedAccessInstanceLoggingConfiguration>]

The logging configuration for the Verified Access instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

