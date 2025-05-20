
package Paws::Glue::ListUsageProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::Glue::UsageProfileDefinition]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListUsageProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 Profiles => ArrayRef[L<Paws::Glue::UsageProfileDefinition>]

A list of usage profile (C<UsageProfileDefinition>) objects.


=head2 _request_id => Str


=cut

1;