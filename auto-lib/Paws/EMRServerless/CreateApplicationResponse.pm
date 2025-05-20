
package Paws::EMRServerless::CreateApplicationResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The output contains the application ID.


=head2 B<REQUIRED> Arn => Str

The output contains the ARN of the application.


=head2 Name => Str

The output contains the name of the application.


=head2 _request_id => Str


=cut

