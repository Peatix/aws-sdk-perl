
package Paws::Rbin::ListRules;
  use Moose;
  has ExcludeResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has LockState => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Rbin::ResourceTag]');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::ListRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::ListRules - Arguments for method ListRules on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $ListRulesResponse = $rbin->ListRules(
      ResourceType        => 'EBS_SNAPSHOT',
      ExcludeResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LockState    => 'locked',         # OPTIONAL
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      ResourceTags => [
        {
          ResourceTagKey   => 'MyResourceTagKey',
          ResourceTagValue => 'MyResourceTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRulesResponse->NextToken;
    my $Rules     = $ListRulesResponse->Rules;

    # Returns a L<Paws::Rbin::ListRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/ListRules>

=head1 ATTRIBUTES


=head2 ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Region-level retention rules only] Information about the exclusion
tags used to identify resources that are to be excluded, or ignored, by
the retention rule.



=head2 LockState => Str

The lock state of the retention rules to list. Only retention rules
with the specified lock state are returned.

Valid values are: C<"locked">, C<"pending_unlock">, C<"unlocked">

=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]

[Tag-level retention rules only] Information about the resource tags
used to identify resources that are retained by the retention rule.



=head2 B<REQUIRED> ResourceType => Str

The resource type retained by the retention rule. Only retention rules
that retain the specified resource type are listed. Currently, only
Amazon EBS snapshots and EBS-backed AMIs are supported. To list
retention rules that retain snapshots, specify C<EBS_SNAPSHOT>. To list
retention rules that retain EBS-backed AMIs, specify C<EC2_IMAGE>.

Valid values are: C<"EBS_SNAPSHOT">, C<"EC2_IMAGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

