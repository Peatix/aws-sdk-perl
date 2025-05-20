
package Paws::Rbin::CreateRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExcludeResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has LockConfiguration => (is => 'ro', isa => 'Paws::Rbin::LockConfiguration');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Paws::Rbin::RetentionPeriod', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::CreateRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::CreateRule - Arguments for method CreateRule on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $CreateRuleResponse = $rbin->CreateRule(
      ResourceType    => 'EBS_SNAPSHOT',
      RetentionPeriod => {
        RetentionPeriodUnit  => 'DAYS',    # values: DAYS
        RetentionPeriodValue => 1,         # min: 1, max: 3650

      },
      Description         => 'MyDescription',    # OPTIONAL
      ExcludeResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LockConfiguration => {
        UnlockDelay => {
          UnlockDelayUnit  => 'DAYS',    # values: DAYS
          UnlockDelayValue => 1,         # min: 7, max: 30

        },

      },    # OPTIONAL
      ResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Description         = $CreateRuleResponse->Description;
    my $ExcludeResourceTags = $CreateRuleResponse->ExcludeResourceTags;
    my $Identifier          = $CreateRuleResponse->Identifier;
    my $LockConfiguration   = $CreateRuleResponse->LockConfiguration;
    my $LockState           = $CreateRuleResponse->LockState;
    my $ResourceTags        = $CreateRuleResponse->ResourceTags;
    my $ResourceType        = $CreateRuleResponse->ResourceType;
    my $RetentionPeriod     = $CreateRuleResponse->RetentionPeriod;
    my $RuleArn             = $CreateRuleResponse->RuleArn;
    my $Status              = $CreateRuleResponse->Status;
    my $Tags                = $CreateRuleResponse->Tags;

    # Returns a L<Paws::Rbin::CreateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/CreateRule>

=head1 ATTRIBUTES


=head2 Description => Str

The retention rule description.



=head2 ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Region-level retention rules only] Specifies the exclusion tags to use
to identify resources that are to be excluded, or ignored, by a
Region-level retention rule. Resources that have any of these tags are
not retained by the retention rule upon deletion.

You can't specify exclusion tags for tag-level retention rules.



=head2 LockConfiguration => L<Paws::Rbin::LockConfiguration>

Information about the retention rule lock configuration.



=head2 ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Tag-level retention rules only] Specifies the resource tags to use to
identify resources that are to be retained by a tag-level retention
rule. For tag-level retention rules, only deleted resources, of the
specified resource type, that have one or more of the specified tag key
and value pairs are retained. If a resource is deleted, but it does not
have any of the specified tag key and value pairs, it is immediately
deleted without being retained by the retention rule.

You can add the same tag key and value pair to a maximum or five
retention rules.

To create a Region-level retention rule, omit this parameter. A
Region-level retention rule does not have any resource tags specified.
It retains all deleted resources of the specified resource type in the
Region in which the rule is created, even if the resources are not
tagged.



=head2 B<REQUIRED> ResourceType => Str

The resource type to be retained by the retention rule. Currently, only
Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
snapshots, specify C<EBS_SNAPSHOT>. To retain EBS-backed AMIs, specify
C<EC2_IMAGE>.

Valid values are: C<"EBS_SNAPSHOT">, C<"EC2_IMAGE">

=head2 B<REQUIRED> RetentionPeriod => L<Paws::Rbin::RetentionPeriod>

Information about the retention period for which the retention rule is
to retain resources.



=head2 Tags => ArrayRef[L<Paws::Rbin::Tag>]

Information about the tags to assign to the retention rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

