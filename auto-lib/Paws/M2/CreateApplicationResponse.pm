
package Paws::M2::CreateApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

The Amazon Resource Name (ARN) of the application.


=head2 B<REQUIRED> ApplicationId => Str

The unique application identifier.


=head2 B<REQUIRED> ApplicationVersion => Int

The version number of the application.


=head2 _request_id => Str


=cut

