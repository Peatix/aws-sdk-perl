
package Paws::Glue::GetUsageProfileResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Glue::ProfileConfiguration');
  has CreatedOn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUsageProfileResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Glue::ProfileConfiguration>

A C<ProfileConfiguration> object specifying the job and session values
for the profile.


=head2 CreatedOn => Str

The date and time when the usage profile was created.


=head2 Description => Str

A description of the usage profile.


=head2 LastModifiedOn => Str

The date and time when the usage profile was last modified.


=head2 Name => Str

The name of the usage profile.


=head2 _request_id => Str


=cut

1;