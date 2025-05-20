
package Paws::PartnerCentralSelling::GetEngagementResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Contexts => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementContextDetails]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has MemberCount => (is => 'ro', isa => 'Int');
  has Title => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetEngagementResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the engagement retrieved.


=head2 Contexts => ArrayRef[L<Paws::PartnerCentralSelling::EngagementContextDetails>]

A list of context objects associated with the engagement. Each context
provides additional information related to the Engagement, such as
customer projects or documents.


=head2 CreatedAt => Str

The date and time when the Engagement was created, presented in ISO
8601 format (UTC). For example: "2023-05-01T20:37:46Z". This timestamp
helps track the lifecycle of the Engagement.


=head2 CreatedBy => Str

The AWS account ID of the user who originally created the engagement.
This field helps in tracking the origin of the engagement.


=head2 Description => Str

A more detailed description of the engagement. This provides additional
context or information about the engagement's purpose or scope.


=head2 Id => Str

The unique resource identifier of the engagement retrieved.


=head2 MemberCount => Int

Specifies the current count of members participating in the Engagement.
This count includes all active members regardless of their roles or
permissions within the Engagement.


=head2 Title => Str

The title of the engagement. It provides a brief, descriptive name for
the engagement that is meaningful and easily recognizable.


=head2 _request_id => Str


=cut

1;