
package Paws::Kendra::DescribeAccessControlConfigurationResponse;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Principal]');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has HierarchicalAccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::HierarchicalPrincipal]');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeAccessControlConfigurationResponse

=head1 ATTRIBUTES


=head2 AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]

Information on principals (users and/or groups) and which documents
they should have access to. This is useful for user context filtering,
where search results are filtered based on the user or their group
access to documents.


=head2 Description => Str

The description for the access control configuration.


=head2 ErrorMessage => Str

The error message containing details if there are issues processing the
access control configuration.


=head2 HierarchicalAccessControlList => ArrayRef[L<Paws::Kendra::HierarchicalPrincipal>]

The list of principal
(https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html) lists
that define the hierarchy for which documents users should have access
to.


=head2 B<REQUIRED> Name => Str

The name for the access control configuration.


=head2 _request_id => Str


=cut

1;