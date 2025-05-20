
package Paws::OAM::UpdateLinkOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Label => (is => 'ro', isa => 'Str');
  has LabelTemplate => (is => 'ro', isa => 'Str');
  has LinkConfiguration => (is => 'ro', isa => 'Paws::OAM::LinkConfiguration');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SinkArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::OAM::TagMapOutput');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::UpdateLinkOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the link that you have updated.


=head2 Id => Str

The random ID string that Amazon Web Services generated as part of the
sink ARN.


=head2 Label => Str

The label assigned to this link, with the variables resolved to their
actual values.


=head2 LabelTemplate => Str

The exact label template that was specified when the link was created,
with the template variables not resolved.


=head2 LinkConfiguration => L<Paws::OAM::LinkConfiguration>

This structure includes filters that specify which metric namespaces
and which log groups are shared from the source account to the
monitoring account.


=head2 ResourceTypes => ArrayRef[Str|Undef]

The resource types now supported by this link.


=head2 SinkArn => Str

The ARN of the sink that is used for this link.


=head2 Tags => L<Paws::OAM::TagMapOutput>

The tags assigned to the link.


=head2 _request_id => Str


=cut

