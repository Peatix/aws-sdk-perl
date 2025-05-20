
package Paws::GlueDataBrew::DescribeRulesetResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Rule]');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');
  has TargetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeRulesetResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the ruleset was created.


=head2 CreatedBy => Str

The Amazon Resource Name (ARN) of the user who created the ruleset.


=head2 Description => Str

The description of the ruleset.


=head2 LastModifiedBy => Str

The Amazon Resource Name (ARN) of the user who last modified the
ruleset.


=head2 LastModifiedDate => Str

The modification date and time of the ruleset.


=head2 B<REQUIRED> Name => Str

The name of the ruleset.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) for the ruleset.


=head2 Rules => ArrayRef[L<Paws::GlueDataBrew::Rule>]

A list of rules that are defined with the ruleset. A rule includes one
or more checks to be validated on a DataBrew dataset.


=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags that have been applied to the ruleset.


=head2 TargetArn => Str

The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset
is associated with.


=head2 _request_id => Str


=cut

