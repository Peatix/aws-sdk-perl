
package Paws::CloudFormation::DescribeGeneratedTemplateOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has GeneratedTemplateId => (is => 'ro', isa => 'Str');
  has GeneratedTemplateName => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Paws::CloudFormation::TemplateProgress');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceDetail]');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has TemplateConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::TemplateConfiguration');
  has TotalWarnings => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeGeneratedTemplateOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time the generated template was created.


=head2 GeneratedTemplateId => Str

The Amazon Resource Name (ARN) of the generated template. The format is
C<arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}>.
For example,
C<arn:aws:cloudformation:I<us-east-1>:I<123456789012>:generatedtemplate/I<2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc>
>.


=head2 GeneratedTemplateName => Str

The name of the generated template.


=head2 LastUpdatedTime => Str

The time the generated template was last updated.


=head2 Progress => L<Paws::CloudFormation::TemplateProgress>

An object describing the progress of the template generation.


=head2 Resources => ArrayRef[L<Paws::CloudFormation::ResourceDetail>]

A list of objects describing the details of the resources in the
template generation.


=head2 StackId => Str

The stack ARN of the base stack if a base stack was provided when
generating the template.


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
=head2 StatusReason => Str

The reason for the current template generation status. This will
provide more details if a failure happened.


=head2 TemplateConfiguration => L<Paws::CloudFormation::TemplateConfiguration>

The configuration details of the generated template, including the
C<DeletionPolicy> and C<UpdateReplacePolicy>.


=head2 TotalWarnings => Int

The number of warnings generated for this template. The warnings are
found in the details of each of the resources in the template.


=head2 _request_id => Str


=cut

