
package Paws::CloudFormation::GetGeneratedTemplateOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetGeneratedTemplateOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status of the template generation. Supported values are:

=over

=item *

C<CreatePending> - the creation of the template is pending.

=item *

C<CreateInProgress> - the creation of the template is in progress.

=item *

C<DeletePending> - the deletion of the template is pending.

=item *

C<DeleteInProgress> - the deletion of the template is in progress.

=item *

C<UpdatePending> - the update of the template is pending.

=item *

C<UpdateInProgress> - the update of the template is in progress.

=item *

C<Failed> - the template operation failed.

=item *

C<Complete> - the template operation is complete.

=back


Valid values are: C<"CREATE_PENDING">, C<"UPDATE_PENDING">, C<"DELETE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"FAILED">, C<"COMPLETE">
=head2 TemplateBody => Str

The template body of the generated template, in the language specified
by the C<Language> parameter.


=head2 _request_id => Str


=cut

