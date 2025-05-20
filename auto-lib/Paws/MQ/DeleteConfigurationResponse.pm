
package Paws::MQ::DeleteConfigurationResponse;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DeleteConfigurationResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.


=head2 _request_id => Str


=cut

