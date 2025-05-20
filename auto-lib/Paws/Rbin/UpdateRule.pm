
package Paws::Rbin::UpdateRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExcludeResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has ResourceType => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::Rbin::RetentionPeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::UpdateRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::UpdateRule - Arguments for method UpdateRule on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRule on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method UpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRule.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $UpdateRuleResponse = $rbin->UpdateRule(
      Identifier          => 'MyRuleIdentifier',
      Description         => 'MyDescription',      # OPTIONAL
      ExcludeResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ResourceType    => 'EBS_SNAPSHOT',    # OPTIONAL
      RetentionPeriod => {
        RetentionPeriodUnit  => 'DAYS',     # values: DAYS
        RetentionPeriodValue => 1,          # min: 1, max: 3650

      },    # OPTIONAL
    );

    # Results:
    my $Description         = $UpdateRuleResponse->Description;
    my $ExcludeResourceTags = $UpdateRuleResponse->ExcludeResourceTags;
    my $Identifier          = $UpdateRuleResponse->Identifier;
    my $LockEndTime         = $UpdateRuleResponse->LockEndTime;
    my $LockState           = $UpdateRuleResponse->LockState;
    my $ResourceTags        = $UpdateRuleResponse->ResourceTags;
    my $ResourceType        = $UpdateRuleResponse->ResourceType;
    my $RetentionPeriod     = $UpdateRuleResponse->RetentionPeriod;
    my $RuleArn             = $UpdateRuleResponse->RuleArn;
    my $Status              = $UpdateRuleResponse->Status;

    # Returns a L<Paws::Rbin::UpdateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/UpdateRule>

=head1 ATTRIBUTES


=head2 Description => Str

The retention rule description.



=head2 ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Region-level retention rules only] Specifies the exclusion tags to use
to identify resources that are to be excluded, or ignored, by a
Region-level retention rule. Resources that have any of these tags are
not retained by the retention rule upon deletion.

You can't specify exclusion tags for tag-level retention rules.



=head2 B<REQUIRED> Identifier => Str

The unique ID of the retention rule.



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



=head2 ResourceType => Str

This parameter is currently not supported. You can't update a retention
rule's resource type after creation.

Valid values are: C<"EBS_SNAPSHOT">, C<"EC2_IMAGE">

=head2 RetentionPeriod => L<Paws::Rbin::RetentionPeriod>

Information about the retention period for which the retention rule is
to retain resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRule in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

