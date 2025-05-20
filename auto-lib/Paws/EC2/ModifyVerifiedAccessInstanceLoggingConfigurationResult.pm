
package Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfigurationResult;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessInstanceLoggingConfiguration', request_name => 'loggingConfiguration', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessInstanceLoggingConfigurationResult

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::EC2::VerifiedAccessInstanceLoggingConfiguration>

The logging configuration for the Verified Access instance.


=head2 _request_id => Str


=cut

