
package Paws::VerifiedPermissions::UpdatePolicyTemplateOutput;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate' , required => 1);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PolicyTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyTemplateId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedDate => Str

The date and time that the policy template was originally created.


=head2 B<REQUIRED> LastUpdatedDate => Str

The date and time that the policy template was most recently updated.


=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store that contains the updated policy template.


=head2 B<REQUIRED> PolicyTemplateId => Str

The ID of the updated policy template.


=head2 _request_id => Str


=cut

1;